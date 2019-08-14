#!/bin/bash
source LINKS
eval "echo \"$(< Singularity.template)\"" > Singularity
