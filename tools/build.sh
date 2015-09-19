#!/bin/bash
# (C) 2015 Minimal OS
# Minimal OS build script
# By Chinmay (DarkFalcon)

#Help menu
case $1 in
  -h|--help )
      echo -e "\n\nMinimal OS build script"
      echo -e "Usage:\n     ./build.sh [PRODUCT_NAME] [MODE] [JOBS]"
      echo -e "PRODUCT_NAME   -   Product you're currently building for"
      echo -e "MODE           -   Specify the mode. -s is for repo sync and -c is for clean build."
      echo -e "                   Using -sc whill perform a repo sync as well as a clean build."
      echo -e "JOBS           -   Number of CPU jobs/threads you want the build to utilize"
      echo -e "-h | --help    -   Show this help and exit\n\n"
      exit
esac


#Sanity checks
if [ ! -f build/envsetup.sh ] 
then
  echo -e "The script is probably not in the parent source folder. \nExiting..."
  exit
fi

if [ ! "$1" ]
then
  echo -e "No product name supplied."
  echo -e "Please enter ./build.sh $PRODUCT_NAME to run script. \nEnter ./build.sh --help for usage and more options"
  exit
  else
    PRODUCT_NAME="$1"
fi

if [ ! "$2" ]
then
  echo -e "No mode supplied."
  echo -e "Enter ./build.sh --help for usage and more options"
  else
    if [ ! "$3" ]
    then
      echo -e "Warning: Number of jobs not provided"
      echo -e "The script will run further tasks using default jobs"
      echo -e "Enter ./build.sh --help for usage and more options"
      JOBS="$2"
    fi
  MODE="$2"
  JOBS="$3"
fi


# Define everything here
HOST=$(echo $HOSTNAME)
USER=$(whoami)


# Optimizations
optimizations() {
  flags=( 'echo -e \nProceeding without using optimizaions' 'export USE_O3_OPTIMIZATIONS=true' 'export FLOOP_NEST_OPTIMIZE=true' 'export FFAST_MATH=true' 'export STRICT_ALIASING=true' 'export KRAIT_TUNINGS=true' 'export ENABLE_GCCONLY=true' 'export GRAPHITE_OPTS=true' 'export USE_HOST_4_8=true' 'export SUPPRES_UNUSED_WARNING=true' )
  echo -e "Select optimizations:"
  echo -e "1. USE_O3_OPTIMIZATIONS"
  echo -e "2. FLOOP_NEST_OPTIMIZE"
  echo -e "3. FFAST_MATH"
  echo -e "4. STRICT_ALIASING"
  echo -e "5. KRAIT_TUNINGS"
  echo -e "6. ENABLE_GCCONLY"
  echo -e "7. GRAPHITE_OPTS"
  echo -e "8. USE_HOST_4_8"
  echo -e "9. SUPPRES_UNUSED_WARNING"
  echo -e "0. None"
  echo -e ""
  read -e options
  for index in $options
  do
        ${flags[index]}
  done
}

# repo sync
if [ $MODE == "-s" ] || [ $MODE == "-sc" ]
then
      echo -e "\nRepo syncing..."
      repo sync "$JOBS"
  else
      echo -e "\nProceeding without repo syncing..." 
fi


# Show the USER and HOST to user
echo -e "\nYour user is $USER and host is $HOST\n"


# Start the actual build
echo -e "Setting up the environment...\n"
sleep 3
source build/envsetup.sh
lunch minimal_"$PRODUCT_NAME"-userdebug
optimizations;
export KBUILD_BUILD_USER="$USER"
export KBUILD_BUILD_HOST="$HOST"
export USE_PREBUILT_CHROMIUM=true
export CHANGELOG=true
echo -e "\nEnvironment set up.\n"

# Release build
echo -e "Is this a release build? [Default=No]"
read -n 1 release
case $release in
   Y|y )
      export MINIMAL_RELEASE=true
      ;;
   N|n|"" )
      unset MINIMAL_RELEASE
      ;;
   * )
      unset MINIMAL_RELEASE
      ;;
esac

# Clean build
echo -e "Starting build for $PRODUCT_NAME\n\n"
sleep 3
if [ $MODE == "-c" ] || [ $MODE == "-sc" ]
then
       echo -e "Cleaning up out folder..."
       mka clean && mka bacon "$JOBS"
    else
      rm $OUT/system/build.prop
      mka bacon "$JOBS"
fi
