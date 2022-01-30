rm -rf stimuli_reduced
mkdir stimuli_reduced

IFS=$'\n'
for file in $(find . -iname '*.mp4') ; do
    ffmpeg -i $file -vcodec libx264 -crf 20 stimuli_reduced/$(basename $file)
    done
#     echo "stimuli_reduced/$(basename $f)"

#     # ffmpeg -i $f -vcodec libx264 -crf 20 'stimuli_reduced/$(basename $f)'
# done
