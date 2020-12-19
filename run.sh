folder=$PWD/$2
echo $1 $2
nohup docker run -i -e project_name="$1" -v $folder:/source_code -v $PWD/output_bin:/output_bin python3_cross_packager/linux-amd64 >run_out/linux-amd64.out 2>&1 &
nohup docker run -i -e project_name="$1" -v $folder:/source_code -v $PWD/output_bin:/output_bin python3_cross_packager/linux-arm64 >run_out/linux-arm64.out 2>&1 &
nohup docker run -i -e project_name="$1" -v $folder:/source_code -v $PWD/output_bin:/output_bin python3_cross_packager/linux-armel >run_out/linux-armel.out 2>&1 &
nohup docker run -i -e project_name="$1" -v $folder:/source_code -v $PWD/output_bin:/output_bin python3_cross_packager/linux-armhf >run_out/linux-armhf.out 2>&1 &
nohup docker run -i -e project_name="$1" -v $folder:/source_code -v $PWD/output_bin:/output_bin python3_cross_packager/linux-i386 >run_out/linux-i386.out 2>&1 &
nohup docker run -i -e project_name="$1" -v $folder:/source_code -v $PWD/output_bin:/output_bin python3_cross_packager/linux-mips64le >run_out/linux-mips64le.out 2>&1 &
nohup docker run -i -e project_name="$1" -v $folder:/source_code -v $PWD/output_bin:/output_bin python3_cross_packager/linux-ppc64le >run_out/linux-ppc64le.out 2>&1 &
nohup docker run -i -e project_name="$1" -v $folder:/source_code -v $PWD/output_bin:/output_bin python3_cross_packager/linux-s390x >run_out/linux-s390x.out 2>&1 &

echo "[$(date "+%Y-%m-%d %H:%M:%S")] Encapsulating"
while true
do
        process0=`ps aux | grep "docker run" | grep -v grep`;
        if [ "$process0" == "" ]; then
                echo -e "\n[$(date "+%Y-%m-%d %H:%M:%S")] ALL Finished!";
                break;
        else
                echo -e ".\c"
                sleep 5;
        fi
done
