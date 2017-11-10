#!/bin/bash
PHARO=61
VM=vm

wget -O - get.pharo.org/64/$PHARO+$VM | bash

./pharo Pharo.image save QCMagritte --delete-old
./pharo QCMagritte.image eval "Metacello new githubUser: 'Afibre' project: 'QCMagritte' commitish: 'master' path: 'src'; baseline: 'QCMagritte'; load. (Smalltalk at:#ZnZincServerAdaptor) startOn:8080. Smalltalk snapshot: true andQuit: true."

zip -r QCMagritte.zip QCMagritte.image QCMagritte.changes
