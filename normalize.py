import os
import subprocess as sp

for f in os.listdir('stimuli'):
    if f.endswith('.mp4'):
        sp.call(['ffmpeg-normalize', '-c:a', 'aac', '-ext', 'mp4', os.path.join('stimuli', f)])
