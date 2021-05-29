#amd64
FROM debian:foo@sha256:f0bbbb17bb1f3204ba6a37e28a2d6ec70aa6a6d96e45aae8b0aabe2b93131963 as amd64
VOLUME [/source_code]
VOLUME [/output_bin]

ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip git sudo zip -y
RUN pip3 install pyinstaller
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#arm64
FROM debian:foo@sha256:e51325052cf978c32c61afabf1e30adb01310751cb1f51d7d8a75cea0bb5400e as arm64

VOLUME [/source_code]
VOLUME [/output_bin]

ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
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
FROM debian:foo@sha256:ff6da4654914c9ceecad572c476ebc4ef3dffed7dd7321824652d45491a0e869 as armel
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
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
FROM debian:foo@sha256:530181f0cfdf0331dd8aa1166175fd114500470a9e93085a0c50f00b50de6467 as armhf
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
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
FROM debian:foo@sha256:caa56df7489c7fe146603c2626b0d58138b92e0fddbd1773d98f57f47e38463b as i386
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip git sudo zip -y
RUN pip3 install pyinstaller
RUN mkdir /workspace
CMD cp -r /source_code/* /workspace && cd /workspace && ./wrapper/Linux.sh && cd dist && zip $(echo $project_name)-$(uname)-$(dpkg --print-architecture).zip * && mv *.zip /output_bin

#mips
FROM debian:foo@sha256:8929139785e66144057d170de8982a6ed2944800cfd897cd270903d647d2fef6 as mips
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
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
FROM debian:foo@sha256:24d1fcbe8ae1a185913dc1da4b87e4764d49551b66c2cf52a401688a38ddc43a as mipsel
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
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
FROM debian:foo@sha256:defc55973546604a9ba8105eeb2abf4b44ce34ebffc0ce62020f68fe01282ab4 as mips64el
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
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
FROM debian:foo@sha256:6bee812cdd765f1c77a64bf7897981ad2b3b10a3eca58500645d1927c241ac3a as ppc64le
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
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
FROM debian:foo@sha256:6738466aa19a116ca4dbb9bcdc973444d2a3774d14d98ef0f64be7828d573654 as s390x
VOLUME [/source_code]
VOLUME [/output_bin]
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
RUN apt update
RUN ldd --version | grep ldd
RUN uname -m
RUN apt install python3 python3-pip sudo zip build-essential zlib1g-dev wget nano -y
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
