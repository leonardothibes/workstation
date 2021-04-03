#!/bin/bash

echo "       - Insomnia..."

URL="https://github-releases.githubusercontent.com/56899284/61500500-90d5-11eb-8d77-0b403f03be3c?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210403%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210403T014250Z&X-Amz-Expires=300&X-Amz-Signature=1b6f8c0551442ad48a6c88e150bc24cfd46e1734ba49ff3d05fd3a47a64bbd45&X-Amz-SignedHeaders=host&actor_id=1135830&key_id=0&repo_id=56899284&response-content-disposition=attachment%3B%20filename%3DInsomnia.Core-2021.2.2.deb&response-content-type=application%2Foctet-stream"
TMP=/tmp

LOCK=/tmp/workstation.lock.insomnia
# [ -f ${LOCK} ] && return

apt-get install -y libappindicator3-1 > /dev/null 2>&1

curl -s ${URL} -o ${TMP}/insomnia.deb
dpkg -i ${TMP}/insomnia.deb > /dev/null 2>&1

rm -f ${TMP}/insomnia.deb
> ${LOCK}
