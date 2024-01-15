#!/usr/bin/env bash

conda deactivate

find .. -name 'rmsf_tempfactors.pdb' -exec pymol {} -c pymol_render.pml -- {} \;
