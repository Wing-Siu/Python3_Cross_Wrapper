#amd64
FROM lpenz/debian-stretch-amd64-minbase as amd64
VOLUME [/source_code]
VOLUME [/output_bin]

ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip git sudo zip -y
RUN pip3 install setuptools==39.2.0
RUN pip3 install pyinstaller
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#arm64
FROM lpenz/debian-stretch-arm64-minbase as arm64

VOLUME [/source_code]
VOLUME [/output_bin]

ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano git libxml2-dev libxslt-dev libcmocka-dev libcmocka0 zlib* libjpeg-dev -y
RUN pip3 install setuptools==39.2.0
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace/ && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#armel
FROM lpenz/debian-stretch-armel-minbase as armel
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano git libxml2-dev libxslt-dev libcmocka-dev libcmocka0 zlib* libjpeg-dev -y
RUN pip3 install setuptools==39.2.0
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#armhf
FROM lpenz/debian-stretch-armhf-minbase as armhf
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano git libxml2-dev libxslt-dev libcmocka-dev libcmocka0 zlib* libjpeg-dev -y
RUN pip3 install setuptools==39.2.0
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#i386
FROM lpenz/debian-stretch-i386-minbase as i386
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip git sudo zip -y
RUN pip3 install setuptools==39.2.0
RUN pip3 install pyinstaller
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#mips
FROM lpenz/debian-stretch-mips-minbase as mips
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano git libxml2-dev libxslt-dev libcmocka-dev libcmocka0 zlib* libjpeg-dev -y
RUN pip3 install setuptools==39.2.0
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#mipsel
FROM lpenz/debian-stretch-mipsel-minbase as mipsel
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano git libxml2-dev libxslt-dev libcmocka-dev libcmocka0 zlib* libjpeg-dev -y
RUN pip3 install setuptools==39.2.0
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#mips64el
FROM lpenz/debian-stretch-mips64el-minbase as mips64el
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano git libxml2-dev libxslt-dev libcmocka-dev libcmocka0 zlib* libjpeg-dev -y
RUN pip3 install setuptools==39.2.0
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#ppc64le
FROM lpenz/debian-stretch-ppc64le-minbase as ppc64le
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano git libxml2-dev libxslt-dev libcmocka-dev libcmocka0 zlib* libjpeg-dev -y
RUN pip3 install setuptools==39.2.0
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#s390x
FROM lpenz/debian-stretch-s390x-minbase as s390x
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano git libxml2-dev libxslt-dev libcmocka-dev libcmocka0 zlib* libjpeg-dev -y
RUN pip3 install setuptools==39.2.0
#========== pyinstaller compile ============
RUN wget https://files.pythonhosted.org/packages/82/96/21ba3619647bac2b34b4996b2dbbea8e74a703767ce24192899d9153c058/pyinstaller-4.0.tar.gz
RUN tar -zxvf pyinstaller-4.0.tar.gz
WORKDIR /pyinstaller-4.0/bootloader
RUN sed -i "s/                                        '-Werror',//" wscript
RUN python3 ./waf distclean all
WORKDIR /pyinstaller-4.0
RUN python3 setup.py install
#========== pyinstaller compile ============
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin
