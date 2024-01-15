import sys
import os

cmd.load('/home/aretaon/mnt/bigdata/syt1_membrane_md_charmm_150_KCl/02_assemble_system/sv_membrane/c2a_only/0_deg/protein_centered.pdb')

fpath = sys.argv[-1]

# set the colour scale
spectrum b, rainbow, minimum=0, maximum=4

# set a base radius of 1.0 (will be scaled based on B factors)
set cartoon_putty_radius, 1

# absolute linear scaling from the B factor
set cartoon_putty_transform, 7

as cartoon
cartoon putty

show spheres, resname Cal
color orange, resname Cal

select ref, protein_centered and polymer
select mobile, rmsf_tempfactors and polymer
align mobile, ref

hide everything, ref

rotate y, 270
rotate x, 180
zoom polymer

/cmd.set('bg_rgb',0,'',0)
set opaque_background, 1
outpath=os.path.join(os.path.split(sys.argv[-1])[0], 'rmsf_tempfactors.png')
cmd.png(outpath, 0, 0, -1, ray=1)
print(os.path.join(os.path.split(sys.argv[-1])[0], 'rmsf_tempfactors.png'))
quit
