echo "* ============== Python3 Cross Wrapper ============== *"
echo "|                       BETA 0.1                      |"
echo "* =================================================== *"

mkdir build_out
mkdir output_bin
mkdir run_out

nohup docker build ./platforms/Linux/ --target arm64 -t python3_cross_packager/linux-arm64 >build_out/linux-arm64.out 2>&1 &
nohup docker build ./platforms/Linux/ --target armel -t python3_cross_packager/linux-armel >build_out/linux-armel.out 2>&1 &
nohup docker build ./platforms/Linux/ --target armhf -t python3_cross_packager/linux-armhf >build_out/linux-armhf.out 2>&1 &
nohup docker build ./platforms/Linux/ --target amd64 -t python3_cross_packager/linux-amd64 >build_out/linux-amd64.out 2>&1 &
nohup docker build ./platforms/Linux/ --target i386 -t python3_cross_packager/linux-i386 >build_out/linux-i386.out 2>&1 &
nohup docker build ./platforms/Linux/ --target mips64le -t python3_cross_packager/linux-mips64le >build_out/linux-mips64le.out 2>&1 &
nohup docker build ./platforms/Linux/ --target ppc64le -t python3_cross_packager/linux-ppc64le >build_out/linux-ppc64le.out 2>&1 &
nohup docker build ./platforms/Linux/ --target s390x -t python3_cross_packager/linux-s390x >build_out/linux-s390x.out 2>&1 &


echo "[$(date "+%Y-%m-%d %H:%M:%S")] Building"
while true
do
	process0=`ps aux | grep "docker build" | grep -v grep`;
	if [ "$process0" == "" ]; then
		echo -e "\n[$(date "+%Y-%m-%d %H:%M:%S")]ALL Finished!";
		break;
	else
		echo -e ".\c"
		sleep 5;
	fi
done
