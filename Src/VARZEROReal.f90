SUBROUTINE VARZEROReal
!C ***
!C *** THIS SUBROUTINE ZERO'S ALL OF THE ARRAYS AFTER ALLOCATION
!C ***

      USE GLOBAL  
!C  
!C
!C *** REAL ARRAYS
!C
      ANGVPV=0.0
      DSFLMN=0.0
      DSFLMX=0.0
      FUNKH=0.0
      RKDSFL=0.0
      RKHTAB=0.0
      SBPLTV=0.0
      SFATBT=0.0
      SFNTBE=0.0
      SHPLTV=0.0
      TARRAY=0.0
      TSFSER=0.0
      WQATM=0.0
      WSFLSM=0.0
      WSFLST=0.0
!C
      AAU=0.0
      AAV=0.0
      AB=0.0
      ABEFF=0.0
      ABLPF=0.0
      ACCWFLD=0.0
      ACCWX=0.0
      ACOEF=0.0
      AGWELV=0.0
      AGWELV1=0.0
      AGWELV2=0.0
      AH=0.0
      AHC=0.0
      AHU=0.0
      AHULPF=0.0
      AHV=0.0
      AHVLPF=0.0
      ALOW=0.0
      ALPVEG=0.0
      AMCP=0.0
      AMCU=0.0
      AMCUE=0.0
      AMCV=0.0
      AMCVE=0.0
      AMPU=0.0
      AMPV=0.0
      AMSP=0.0
      AMSU=0.0
      AMSUE=0.0
      AMSV=0.0
      AMSVE=0.0
      ANGWRMFD=0.0
      AP=0.0
      APCG=0.0
      APT=0.0
      AQ=0.0
      AQCTL=0.0
      ASURFEL=0.0
      ATMP=0.0
      ATMWHT=0.0
      AV=0.0
      AVUI=0.0
      AVVI=0.0
      B=0.0
      B0=0.0
      B1=0.0
      B1DT1=0.0
      BBT=0.0
      BBU=0.0
      BBV=0.0
      BCLSHA=0.0
      BDENBED=0.0
      BDENBED1=0.0
      BDENBEDA=0.0
      BDENBEDA1=0.0
      BDISP=0.0
      BDLPSQ=0.0
      BE=0.0
      BEDBINIT=0.0
      BEDBKDSV=0.0
      BEDDINIT=0.0
      BEDLINIT=0.0
      BEDPORSV=0.0
      BEDTHKSV=0.0
      BEDVDRSV=0.0
      BELAGW=0.0
      BELSURF=0.0
      BELV=0.0
      BELV1=0.0
      BELVB=0.0
      BETVEG=0.0
      BFBSTSUM=0.0
      BFCODSUM=0.0
      BFNH4SUM=0.0
      BFNO3SUM=0.0
      BFO2SUM=0.0
      BFPO4SUM=0.0
      BFSADSUM=0.0
      BFSMTSUM=0.0
      BH=0.0
      BI1=0.0
      BI2=0.0
      BLSHA=0.0
      BMNN=0.0
      BOD5SUM=0.0
      BPVEG=0.0
      BQCMFD=0.0
      BQCMFU=0.0
      BQWRMFD=0.0
      BQWRMFU=0.0
      BSLSHA=0.0
      BTAUC=0.0
      BTLSHA=0.0
      BTMP=0.0
      CAC=0.0
      !CAE=0.0   ! PMC - NOT USED
      !CAM=0.0   ! PMC - NOT USED
      !CAN=0.0   ! PMC - NOT USED
      !CAP=0.0   ! PMC - NOT USED
      !CAS=0.0   ! PMC - NOT USED
      !CAW=0.0   ! PMC - NOT USED
      CBE=0.0
      CBEDTOTAL=0.0
      CBN=0.0
      CBS=0.0
      CBW=0.0
      CC=0.0
      CCC=0.0
      CCCC=0.0
      CCCCHH=0.0
      CCCCHU=0.0
      CCCCHV=0.0
      CCCI=0.0
      CCCOS=0.0
      CCCOS1=0.0
      CCE=0.0
      !CCEB=0.0    ! PMC - NOT USED
      !CCER=0.0    ! PMC - NOT USED
      CCI=0.0
      CCLSHA=0.0
      CCN=0.0
      !CCNB=0.0     ! PMC - NOT USED
      CCNHTT=0.0
      !CCNR=0.0     ! PMC - NOT USED
      CCS=0.0
      !CCSB=0.0     ! PMC - NOT USED
      !CCSR=0.0     ! PMC - NOT USED
      CCW=0.0
      !CCWB=0.0     ! PMC - NOT USED
      !CCWR=0.0     ! PMC - NOT USED
      CDECAYB=0.0
      CDECAYW=0.0
      CDXDYW=0.0
      CDZD=0.0
      CDZF=0.0
      CDZKK=0.0
      CDZKKP=0.0
      CDZKMK=0.0
      CDZL=0.0
      CDZM=0.0
      CDZR=0.0
      CDZU=0.0
      CE=0.0
      !CEB=0.0      ! PMC - NOT USED
      !CER=0.0      ! PMC - NOT USED
      CFLCAC=0.0
      CFLUUU=0.0
      CFLVVV=0.0
      CFLWWW=0.0
      CFRD=0.0
      CGEB=0.0
      CGER=0.0
      CGNB=0.0
      CGNR=0.0
      CGSB=0.0
      CGSR=0.0
      CGWB=0.0
      CGWR=0.0
      CH=0.0
      CHANFRIC=0.0
      CHANLEN=0.0
      CHLMMAX=0.0
      CHLMMIN=0.0
      CHLMSUM=0.0
      CLB=0.0
      CLEVAP=0.0
      CLOE=0.0
      CLON=0.0
      CLOS=0.0
      CLOUD=0.0
      CLOUDT=0.0
      CLOW=0.0
      CLSHA=0.0
      CMAX=0.0
      CMB=0.0
      CMIN=0.0
      CN=0.0
      !CNB=0.0       ! PMC - NOT USED
      !CNR=0.0       ! PMC - NOT USED
      CO2WQ=0.0
      COEFK=0.0
      COEFSK=0.0
      CON2=0.0
      CONGW=0.0
      CONPARB=0.0
      CONPARBC=0.0
      CONPARW=0.0
      CONPARWC=0.0
      CONT=0.0
      COSEDHID=0.0
      COSMICX=0.0
      COSMICXN=0.0
      COSMICXP=0.0
      COSMICY=0.0
      COSMICYN=0.0
      COSMICYP=0.0
      COSMICZ=0.0
      COSMICZN=0.0
      COSMICZP=0.0
      CPFAM0=0.0
      CPFAM1=0.0
      CPFAM2=0.0
      CQBEDLOADX=0.0
      CQBEDLOADY=0.0
      CQCJP=0.0
      CQS=0.0
      CQSE=0.0
      CQWR=0.0
      CQWRSER=0.0
      CQWRSERT=0.0
      CRNUU=0.0
      CRNUV=0.0
      CRNUW=0.0
      CRNVU=0.0
      CRNVV=0.0
      CRNVW=0.0
      CRNWU=0.0
      CRNWV=0.0
      CRNWW=0.0
      CS=0.0
      !CSB=0.0       ! PMC - NOT USED
      CSER=0.0
      CSERT=0.0
      !CSERTWQ=0.0   ! PMC - NOT USED
      CSHIELDS50=0.0
      CSLSHA=0.0
      !CSR=0.0       ! PMC - NOT USED
      CTAUC=0.0
      CTLSHA=0.0
      CTMPDRY=0.0
      CTURBB1=0.0
      CTURBB2=0.0
      CU1=0.0
      CU2=0.0
      CUB=0.0
      CUDISPT=0.0
      CUE=0.0
      CUN=0.0
      CUPP=0.0
      CUU=0.0
      CVDISPT=0.0
      CVE=0.0
      CVN=0.0
      CVV=0.0
      CW=0.0
      !CWB=0.0    ! PMC - NOT USED
      CWQ=0.0
      CWQ2=0.0
      CWQLOE=0.0
      CWQLON=0.0
      CWQLOS=0.0
      CWQLOW=0.0
      !CWR=0.0     ! PMC - NOT USED
      CWRCJP=0.0
      CYASUM=0.0
      DDOMAX=0.0
      DDOMIN=0.0
      DEPSUM=0.0
      DERRB=0.0
      DIASUM=0.0
      DIFTOX=0.0
      DIFTOXS=0.0
      DJET=0.0
      DJPER=0.0
      DLAT=0.0
      DLON=0.0
      DML=0.0
      DMVSFP=0.0
      DOOSUM=0.0
      DOSSUM=0.0
      DPDIFTOX=0.0
      DSTRSE=0.0
      DTAUC=0.0
      DU=0.0
      DV=0.0
      DXDJ=0.0
      DXFP=0.0
      DXIU=0.0
      DXIV=0.0
      DXP=0.0
      DXU=0.0
      DXU1=0.0
      DXV=0.0
      DXV1=0.0
      DXXTCA=0.0
      DXYIP=0.0
      DXYIU=0.0
      DXYIV=0.0
      DXYP=0.0
      DXYTCA=0.0
      DXYU=0.0
      DXYV=0.0
      DYDI=0.0
      DYE=0.0
      DYE1=0.0
      DYEAD=0.0
      DYEINIT=0.0
      DYELPF=0.0
      DYFP=0.0
      DYIU=0.0
      DYIV=0.0
      DYP=0.0
      DYU=0.0
      DYU1=0.0
      DYV=0.0
      DYV1=0.0
      DYXTCA=0.0
      DYYTCA=0.0
      DZBTR=0.0
      DZBTR1=0.0
      DZC=0.0
      DZG=0.0
      DZIC=0.0
      DZIG=0.0
      DZIGSD4=0.0
      DZSUM=0.0
      DZWQ=0.0
      EHXYS=0.0
      ETAUC=0.0
      EVAP=0.0
      EVAPGW=0.0
      EVAPSW=0.0
      EVAPT=0.0
      EVPGLPF=0.0
      EVPSLPF=0.0
      FACBEDL=0.0
      FACSUSL=0.0
      FBBX=0.0
      FBBY=0.0
      FBODYFX=0.0
      FBODYFY=0.0
      FCAX=0.0
      FCAX1=0.0
      FCAX1E=0.0
      FCAXE=0.0
      FCAY=0.0
      FCAY1=0.0
      FCAY1E=0.0
      FCAYE=0.0
      FCORC=0.0
      PFPOCB=0.0
      FMDUX=0.0
      FMDUY=0.0
      FMDVX=0.0
      FMDVY=0.0
      FP=0.0
      FP1=0.0
      FPB=0.0
      FPGXE=0.0
      FPGYE=0.0
      PMCTESTX=0.0
      PMCTESTY=0.0
      FPOCB=0.0
      FPOCBST=0.0
      FPOCWST=0.0
      FPR=0.0
      FPROX=0.0
      FPRT=0.0
      FPTMP=0.0
      FQC=0.0
      FRACCOH=0.0
      FRACNON=0.0
      FSALASM=0.0
      FSCORTBCV=0
      FTEMASM=0.0
      FUDISP=0.0
      FUHDYATV=0.0
      FUHDYE=0.0
      FUHU=0.0
      FUHV=0.0
      FVDISP=0.0
      FVHDXE=0.0
      FVHU=0.0
      FVHV=0.0
      FVOLASM=0.0
      FWQQ=0.0
      FWQQL=0.0
      FWU=0.0
      FWV=0.0
      FX=0.0
      FXE=0.0
      FXVEG=0.0
      FXVEGE=0.0
      FXWAVE=0.0
      FY=0.0
      FYE=0.0
      FYVEG=0.0
      FYVEGE=0.0
      FYWAVE=0.0
      FZU=0.0
      FZV=0.0
      GAMB=0.0
      GAMTMP=0.0
      GAMVEG=0.0
      GLSHA=0.0
      GRNSUM=0.0
      GWCSER=0.0
      GWCSERT=0.0
      GWFAC=0.0
      GWLPF=0.0
      GWSER=0.0
      GWSERT=0.0
      H1P=0.0
      H1U=0.0
      H1UI=0.0
      H1V=0.0
      H1VI=0.0
      H2P=0.0
      H2WQ=0.0
      HBED=0.0
      HBED1=0.0
      HBEDA=0.0
      HBEDA1=0.0
      HCTLDA=0.0
      HCTLDM=0.0
      HCTLUA=0.0
      HCTLUM=0.0
      HDFUFX=0.0
      HDFUFY=0.0
      HDFUF=0.0
      HDIFCTD=0.0
      HDIFCTL=0.0
      HGDH=0.0
      HLPF=0.0
      HLRPD=0.0
      HLRPDF=0.0
      HMCW=0.0
      HMP=0.0
      HMPW=0.0
      HMU=0.0
      HMUW=0.0
      HMV=0.0
      HMVW=0.0
      HP=0.0
      HPI=0.0
      HPTMP=0.0
!      write(4,*)hpveg !Can't figure out why this is needed...code crashes without it.
      HPVEG=0.0
      HRU=0.0
      HRUO=0.0
      HRV=0.0
      HRVO=0.0
      !HRXYU=0.0   ! PMC - NOT USED
      !HRXYV=0.0   ! PMC - NOT USED
      HTMP=0.0
      HU=0.0
      HUDRY=0.0
      HUI=0.0
      HUTMP=0.0
      HUWET=0.0
      HV=0.0
      HVDRY=0.0
      HVI=0.0
      HVTMP=0.0
      HVWET=0.0
      HWQ=0.0
      HWQI=0.0
      HYDCN=0.0
      O2WQ=0.0
      P=0.0
      P1=0.0
      P1DT1=0.0
      PAM=0.0
      PATM=0.0
      PATMT=0.0
      !PBLK=0.0    ! PMC - NOT USED
      !PBTMP=0.0   ! PMC - NOT USED
      PCBE=0.0
      PCBN=0.0
      PCBS=0.0
      PCBW=0.0
      PCG=0.0
      !PCGE=0.0    ! PMC - NOT USED
      !PCGN=0.0    ! PMC - NOT USED
      !PCGS=0.0    ! PMC - NOT USED
      !PCGW=0.0    ! PMC - NOT USED
      PCLSHA=0.0
      PDIFTOX=0.0
      !PE=0.0      ! PMC - NOT USED
      PEXP=0.0
      PFAM=0.0
      PFAM1=0.0
      PFAM2=0.0
      PFPH=0.0
      PFPH1=0.0
      PFPH2=0.0
      PHASEE=0.0
      PHASEU=0.0
      PHASEV=0.0
      PHID=0.0
      PHJET=0.0
      PLSHA=0.0
      PMDCH=0.0
      PN=0.0
      PNHYDS=0.0
      PO4DWQ=0.0
      PO4DWQSUM=0.0
      POCMAX=0.0
      POCMIN=0.0
      POCSUM=0.0
      PONMAX=0.0
      PONMIN=0.0
      PONSUM=0.0
      POPMAX=0.0
      POPMIN=0.0
      POPSUM=0.0
      PORBED=0.0
      PORBED1=0.0
      !PORBEDA=0.0     ! PMC - NOT USED
      !PORBEDA1=0.0    ! PMC - NOT USED
      PPH=0.0
      !PRED=0.0        ! PMC - NOT USED
      !PRESE=0.0       ! PMC - NOT USED
      !PRESH=0.0       ! PMC - NOT USED
      !PREST=0.0       ! PMC - NOT USED
      PRODSUM=0.0
      !PS=0.0          ! PMC - NOT USED
      PSBE=0.0
      PSBN=0.0
      PSBS=0.0
      PSBW=0.0
      PSER=0.0
      PSERT=0.0
      PSHADE=1.0
      PSLSHA=0.0
      PTLSHA=0.0
      PTMP=0.0
      PVEGX=0.0
      PVEGY=0.0
      PVEGZ=0.0
      !PW=0.0        ! PMC - NOT USED
      !QBEDS=0.0     ! PMC - NOT USED
      !QBEDW=0.0     ! PMC - NOT USED
      QCELLCTR=0.0
      QCH=0.0
      QCHANU=0.0
      QCHANUN=0.0
      QCHANV=0.0
      QCHANVN=0.0
      QCHNULP=0.0
      QCHNVLP=0.0
      QCOEF=0.0
      QCTL=0.0
      QCTLST=0.0
      QCTLSTO=0.0
      QCTLT=0.0
      QCTLTLP=0.0
      QCTLTO=0.0
      QDWASTE=0.0
      !QEVAP=0.0      ! PMC - NOT USED
      QFACTOR=0.0
      QGW=0.0
      QJPENT=0.0
      QJPENTT=0.0
      QMORPH=0.0
      QQ=0.0
      QQSQR=0.0
      QQ1=0.0
      QQ2=0.0
      QQCJP=0.0
      QQI=0.0
      QQL=0.0
      QQL1=0.0
      QQL2=0.0
      !QQVSE=0.0     ! PMC - NOT USED
      QQWC=0.0
      QQWCR=0.0
      QQWV1=0.0
      QQWV2=0.0
      QQWV3=0.0
      QRAIN=0.0
      QSBDLDIN=0.0
      QSBDLDOT=0.0
      QSBDLDP=0.0
      QSBDLDX=0.0
      QSBDLDY=0.0
      QSBDTOP=0.0
      QSEDBED=0.0
      QSEDBED1=0.0
      QSEDBEDA=0.0
      QSEDBEDA1=0.0
      QSER=0.0
      QSERT=0.0
      QSRTLPN=0.0
      QSRTLPP=0.0
      QSS=0.0
      QSSDPA=0.0
      QSUM=0.0
      QSUME=0.0
      QSUMELPF=0.0
      QSUMELPN=0.0
      QSUMELPP=0.0
      QSUMEN=0.0
      QSUM1E=0.0
      QSUMLPF=0.0
      QSUMLPN=0.0
      QSUMLPP=0.0
      QSUMN=0.0
      QSUMP=0.0
      QWATPA=0.0
      QWBDTOP=0.0
      QWR=0.0
      QWRCJP=0.0
      QWRSER=0.0
      QWRSERT=0.0
      QWRSERTLP=0.0
      QWTRBED=0.0
      QWTRBED1=0.0
      QWTRBEDA=0.0
      QWTRBEDA1=0.0
      !QXXSUM=0.0     ! PMC - NOT USED
      !QYYSUM=0.0     ! PMC - NOT USED
      !RA4=0.0        ! PMC - NOT USED
      RAIN=0.0
      RAINLPF=0.0
      RAINT=0.0
      RBPSBL=0.0
      RCG=0.0
      RCOSMICX=0.0
      RCOSMICXN=0.0
      RCOSMICXP=0.0
      RCOSMICY=0.0
      RCOSMICYN=0.0
      RCOSMICYP=0.0
      RCOSMICZ=0.0
      RCOSMICZN=0.0
      RCOSMICZP=0.0
      RCX=0.0
      RCY=0.0
      RDLPSQ=0.0
      REAC=0.0
      RESPSUM=0.0
      RHA=0.0
      RHS=0.0
      RI=0.0
      RIFTR=0.0
      RINFLPF=0.0
      RJ=0.0
      RK=0.0
      RKASUM=0.0
      RKTOXB=0.0
      RKTOXP=0.0
      RKTOXW=0.0
      RLIGHTC=0.0
      RLIGHTT=0.0
      RMAJ=0.0
      RMIN=0.0
      RMOLTX=0.0
      RNH4WQ=0.0
      RNO3WQ=0.0
      RNULL=0.0
      ROUSE=0.0
      RQCMUL=0.0
      RQSMUL=0.0
      RRHS=0.0
      !RSDB=0.0     ! PMC - NOT USED
      !RSDR=0.0     ! PMC - NOT USED
      !RSDZ=0.0     ! PMC - NOT USED
      RSEDERE2T=0.0
      RSEDERE2TB=0.0
      RSEDERE2TW=0.0
      RSEDERO2T=0.0
      RSEDERO2TB=0.0
      RSEDERO2TW=0.0
      RSNDERE2T=0.0
      RSNDERE2TB=0.0
      RSNDERE2TW=0.0
      RSNDERO2T=0.0
      RSNDERO2TB=0.0
      RSNDERO2TW=0.0
      RSNDM=0.0
      RSOL=0.0
      RSSBCE=0.0
      RSSBCN=0.0
      RSSBCS=0.0
      RSSBCW=0.0
      !RTMP=0.0        ! PMC - NOT USED
      !RTMP1=0.0       ! PMC - NOT USED
      RTOXERE2T=0.0
      RTOXERE2TB=0.0
      RTOXERE2TW=0.0
      RTOXERO2T=0.0
      RTOXERO2TB=0.0
      RTOXERO2TW=0.0
      RTXBSDB=0.0
      SAAX=0.0
      SAAY=0.0
      SADWQMAX=0.0
      SADWQMIN=0.0
      SADWQSUM=0.0
      SAL=0.0
      SAL1=0.0
      SALAD=0.0
      SALINIT=0.0
      SALLPF=0.0
      SALMN=0.0
      SALMX=0.0
      SALSUM=0.0
      SBLOUT2T=0.0
      SBLOUT2TB=0.0
      SBLOUT2TW=0.0
      SBX=0.0
      SBXO=0.0
      SBY=0.0
      SBYO=0.0
      SCAX=0.0
      SCAY=0.0
      SCB=0.0
      SCLSHA=0.0
      SCVEG=0.0
      SDBLV=0.0
      SDEN=0.0
      SDX=0.0
      SDY=0.0

      SECNDS_ZERO=0.0
      SED=0.0
      SED1=0.0
      SED3DMAX=0.0
      SED3DMIN=0.0
      SEDA=0.0
      SEDAD=0.0
      SEDB=0.0
      SEDB1=0.0
      SEDBA=0.0
      SEDBA1=0.0
      SEDBALL=0.0
      SEDBAT=0.0
      SEDBEG2T=0.0
      SEDBEG2TB=0.0
      SEDBEG2TW=0.0
      SEDBINIT=0.0
      SEDBLPF=0.0
      SEDBMO2T=0.0
      SEDBMO2TB=0.0
      SEDBMO2TW=0.0
      SEDBO=0.0
      SEDBS=0.0
      SEDBT=0.0
      SEDBTLPF=0.0
      SEDDIA=0.0
      SEDDIA50=0.0
      SEDEND2T=0.0
      SEDEND2TB=0.0
      SEDEND2TW=0.0
      SEDERE2T=0.0
      SEDERE2TB=0.0
      SEDERE2TW=0.0
      SEDERO2T=0.0
      SEDERO2TB=0.0
      SEDERO2TW=0.0
      SEDERR2T=0.0
      SEDERR2TB=0.0
      SEDERR2TW=0.0
      SEDF=0.0
      SEDFDTAN=0.0
      SEDFDTAP=0.0
      SEDFLUX2T=0.0
      SEDFPA=0.0
      SEDINIT=0.0
      SEDLPF=0.0
      SEDN=0.0
      SEDO=0.0
      SEDOUT2T=0.0
      SEDOUT2TB=0.0
      SEDOUT2TW=0.0
      SEDPHI=0.0
      SEDS=0.0
      SEDT=0.0
      SEDTLPF=0.0
      SELSUM=0.0
      SEXP=0.0
      SFL=0.0
      SFL2=0.0
      SFLAD=0.0
      SFLINIT=0.0
      SFLLPF=0.0
      SFLSBOT=0.0
      SGSM1=0.0
      SIGPHI=0.0
      SIGPHIA=0.0
      SKTOXP=0.0
      SLSHA=0.0
      SM1DIFT=0.0
      SM1H2S=0.0
      SM1NH4=0.0
      SM1NO3=0.0
      SM1PO4=0.0
      SM1SI=0.0
      SM2DIFT=0.0
      SM2H2S=0.0
      SM2NH4=0.0
      SM2NO3=0.0
      SM2PO4=0.0
      SM2SI=0.0
      SMAC=0.0
      SMBST=0.0
      SMCSOD=0.0
      SMD1PO4=0.0
      SMD1SI=0.0
      SMDD=0.0
      SMDFC=0.0
      SMDFN=0.0
      SMDFP=0.0
      SMDFSI=0.0
      SMDGFC=0.0
      SMDGFN=0.0
      SMDGFP=0.0
      SMDP=0.0
      SMDP1PO4=0.0
      SMDPMIN=0.0
      SMDTOH=0.0
      SMFCBC=0.0
      SMFCBD=0.0
      SMFCBG=0.0
      SMFCR=0.0
      SMFNBC=0.0
      SMFNBD=0.0
      SMFNBG=0.0
      SMFNR=0.0
      SMFPBC=0.0
      SMFPBD=0.0
      SMFPBG=0.0
      SMFPR=0.0
      SMHODT=0.0
      SMHSED=0.0
      SMJAQH2S=0.0
      SMJDEN=0.0
      SMJGCH4=0.0
      SMJNIT=0.0
      SMK1H2S=0.0
      SMK1NO3=0.0
      SMK2NO3=0.0
      SMKL12=0.0
      SMKNH4=0.0
      SMNSOD=0.0
      SMPOC=0.0
      SMPON=0.0
      SMPOP=0.0
      SMPSI=0.0
      SMSS=0.0
      SMT=0.0
      SMTD1CH4=0.0
      SMTD2CH4=0.0
      SMTDCD=0.0
      SMTDDD=0.0
      SMTDDP=0.0
      SMTDND=0.0
      SMTDNH4=0.0
      SMTDNO3=0.0
      SMTDPD=0.0
      SMTDSI=0.0
      SMTMP=0.0
      SMW12=0.0
      SMW2=0.0
      SMW2DTOH=0.0
      SMW2PHODT=0.0
      SNAPSHOTS=0.0
      SND=0.0
      SND1=0.0
      SND3DMAX=0.0
      SND3DMIN=0.0
      SNDA=0.0
      SNDAD=0.0
      SNDB=0.0
      SNDB1=0.0
      SNDBA=0.0
      SNDBA1=0.0
      SNDBAT=0.0
      SNDBEG2T=0.0
      SNDBEG2TB=0.0
      SNDBEG2TW=0.0
      SNDBINIT=0.0
      SNDBLPF=0.0
      SNDBMO2T=0.0
      SNDBMO2TB=0.0
      SNDBMO2TW=0.0
      SNDBS=0.0
      SNDBT=0.0
      SNDBTLPF=0.0
      SNDEND2T=0.0
      SNDEND2TB=0.0
      SNDEND2TW=0.0
      SNDEQ=0.0
      SNDEQSAV=0.0
      SNDEQB=0.0
      SNDERE2T=0.0
      SNDERE2TB=0.0
      SNDERE2TW=0.0
      SNDERO2T=0.0
      SNDERO2TB=0.0
      SNDERO2TW=0.0
      SNDERR2T=0.0
      SNDERR2TB=0.0
      SNDERR2TW=0.0
      SNDF=0.0
      SNDFBL=0.0
      SNDFBL2T=0.0
      SNDFDTAN=0.0
      SNDFDTAP=0.0
      SNDFLUX2T=0.0
      SNDFPA=0.0
      SNDINIT=0.0
      SNDLPF=0.0
      SNDOUT2T=0.0
      SNDOUT2TB=0.0
      SNDOUT2TW=0.0
      SNDS=0.0
      SNDT=0.0
      SNDTLPF=0.0
      SNLPX=0.0
      SNLPY=0.0
      SODMULT=0.0
      SODSUM=0.0
      SOLFRD=0.0
      SOLSRD=0.0
      SOLSWR=0.0
      SOLSWRT=0.0
      SPB=0.0
      SPBE1=0.0
      SPBE2=0.0
      SPBN1=0.0
      SPBN2=0.0
      SPBS1=0.0
      SPBS2=0.0
      SPBW1=0.0
      SPBW2=0.0
      SPFAM0=0.0
      SPFAM1=0.0
      SPFAM2=0.0
      SSG=0.0
      SSLSHA=0.0
      SSSIN=0.0
      SSSIN1=0.0
      SSSS=0.0
      STBX=0.0
      STBXO=0.0
      STBY=0.0
      STBYO=0.0
      STCAP=0.0
      STCUV=0.0
      STDOCB=0.0
      STDOCW=0.0
      STFPOCB=0.0
      STFPOCW=0.0
      STLSHA=0.0
      STPOCB=0.0
      STPOCW=0.0
      STRESSS=0.0
      STRSE=0.0
      STRSEM=0.0
      STRST=0.0
      SUB=0.0
      SUBO=0.0
      SURFDX=0.0
      SURFDY=0.0
      SVB=0.0
      SVB1=0.0
      SVPA=0.0
      SWB=0.0
      SWQ=0.0
      SWQSUM=0.0
      TAASER=0.0
      TACSER=0.0
      TAD=0.0
      TADFLUX=0.0
      TADFLUX2T=0.0
      TAGWSER=0.0
      TAPSER=0.0
      TAQSER=0.0
      TAQWRSR=0.0
      TASER=0.0
      TATMT=0.0
      TAUB=0.0
      TAUBSED=0.0
      TAUBSND=0.0
      TAUCRCOH=0.0
      TAUD=0.0
      TAUN=0.0
      TAUR=0.0
      TAURB=0.0
      TAURBA=0.0
      TAURS=0.0
      TAURSA=0.0
      TAVEGSER=0.0
      !TAWQCSR=0.0
!C      TAWQPSR=0.0  NU
      TAWSER=0.0
      TBX=0.0
      TBX1=0.0
      TBY=0.0
      TBY1=0.0
      TCASER=0.0
      TCCSER=0.0
      TCGWSER=0.0
      TCNBED=0.0
      TCNBEDA=0.0
      TCP=0.0
      TCPSER=0.0
      TCQSER=0.0
      TCQWRSR=0.0
      TCSER=0.0
      TCSHIELDS=0.0
      TCVEGSER=0.0
      !TCWQCSR=0.0
      TCWQPSR=0.0
      TCWSER=0.0
      TDRY=0.0
      TEM=0.0
      TEM1=0.0
      TEMAD=0.0
      TEMB=0.0
      TEMB1=0.0
      TEMINIT=0.0
      TEMLPF=0.0
      TEMSUM=0.0
      TEXP=0.0
      TGWSER=0.0
      THJET=0.0
      TIMVSFP=0.0
      TKTOXW=0.0
      TMP3D=0.0
      TOX=0.0
      TOX1=0.0
      TOX3DMAX=0.0
      TOX3DMIN=0.0
      TOXA=0.0
      TOXAD=0.0
      TOXB=0.0
      TOXB1=0.0
      TOXBA=0.0
      TOXBA1=0.0
      TOXBBALN=0.0
      TOXBBALO=0.0
      TOXBEG2T=0.0
      TOXBEG2TB=0.0
      TOXBEG2TW=0.0
      TOXBINIT=0.0
      TOXBLB=0.0
      TOXBLB2T=0.0
      TOXBLPF=0.0
      TOXBMO2T=0.0
      TOXBMO2TB=0.0
      TOXBMO2TW=0.0
      TOXBS=0.0
      TOXCDFB=0.0
      TOXCDFW=0.0
      TOXEND2T=0.0
      TOXEND2TB=0.0
      TOXEND2TW=0.0
      TOXERE2T=0.0
      TOXERE2TB=0.0
      TOXERE2TW=0.0
      TOXERO2T=0.0
      TOXERO2TB=0.0
      TOXERO2TW=0.0
      TOXERR2T=0.0
      TOXERR2TB=0.0
      TOXERR2TW=0.0
      TOXF=0.0
      TOXFB=0.0
      TOXFBA=0.0
      TOXFBL=0.0
      TOXFBL2T=0.0
      TOXFBLT=0.0
      TOXFDFB=0.0
      TOXFDFW=0.0
      TOXFLUXB2T=0.0
      TOXFLUXW2T=0.0
      TOXINIT=0.0
      TOXINTB=0.0
      TOXINTW=0.0
      TOXLPF=0.0
      TOXOUT2T=0.0
      TOXOUT2TB=0.0
      TOXOUT2TW=0.0
      TOXPARB=0.0
      TOXPARBC=0.0
      TOXPARW=0.0
      TOXPARWC=0.0
      TOXPFB=0.0
      TOXPFTB=0.0
      TOXPFTW=0.0
      TOXPFW=0.0
      TOXS=0.0
      TOXTMP=0.0
      TOXWBALN=0.0
      TOXWBALO=0.0
      TPCOORDE=0.0
      TPCOORDN=0.0
      TPCOORDS=0.0
      TPCOORDW=0.0
      TPSER=0.0
      TPWQMAX=0.0
      TPWQMIN=0.0
      TPWQSUM=0.0
      TQSER=0.0
      TQWRSER=0.0
      TRTOXB=0.0
      TSIWQSUM=0.0
      TSSMN=0.0
      TSSMX=0.0
      TSSRD=0.0
      TSSSUM=0.0
      TSSTOP=0.0
      TSSTRT=0.0
      TSX=0.0
      TSX1=0.0
      TSY=0.0
      TSY1=0.0
      TVAR1E=0.0
      TVAR1N=0.0
      TVAR1S=0.0
      TVAR1W=0.0
      TVAR2C=0.0
      TVAR2E=0.0
      TVAR2N=0.0
      TVAR2S=0.0
      TVAR2W=0.0
      TVAR3C=0.0
      TVAR3E=0.0
      TVAR3N=0.0
      TVAR3S=0.0
      TVAR3W=0.0
      TWATER=0.0						!BRW for outputing temperature to tecplot_algae
      TVEGSER=0.0
      TWET=0.0
      TWQ=0.0
      !TWQCSER=0.0
      TWQPSER=0.0
      TWSER=0.0
      TXPFLPF=0.0
      U=0.0
      U0=0.0
      U1=0.0
      !U1ATV=0.0    ! PMC - NOT USED
      U1DT1=0.0
      U1V=0.0
      U2=0.0
      UAGD=0.0
      !UATV=0.0     ! PMC - NOT USED
      UCELLCTR=0.0
      UCLSHA=0.0
      UCOS=0.0
      UE0=0.0
      UE1DT1=0.0
      UECLSHA=0.0
      UELPF=0.0
      UELSHA=0.0
      UESLSHA=0.0
      UETLSHA=0.0
      UHDY=0.0
      UHDY1=0.0
      UHDY1ATV=0.0
      UHDY1E=0.0
      UHDY2=0.0
      UHDY2E=0.0
      !UHDYATV=0.0     ! PMC - NOT USED
      UHDYE=0.0
      UHDYED=0.0
      UHDYWQ=0.0
      UHE=0.0
      UHEQ=0.0
      UHLPF=0.0
      UIRT=0.0
      ULPF=0.0
      ULSHA=0.0
      UMPLRPD=0.0
      UPLRPD=0.0
      USIN=0.0
      USLSHA=0.0
      USTAR=0.0
      USTARSED=0.0
      USTARSND=0.0
      UTLPF=0.0
      UTLSHA=0.0
      UUU=0.0
      UV=0.0
      UVPT=0.0
      UWQ=0.0
      UWVMAG=0.0
      UWVSQ=0.0
      V=0.0
      V0=0.0
      V1=0.0
      V1DT1=0.0
      V1U=0.0
      V2=0.0
      VAGD=0.0
      VATU=0.0
      VCELLCTR=0.0
      VCLSHA=0.0
      VCOS=0.0
      VDRBED=0.0
      VDRBED1=0.0
      VDRBED2=0.0
      VDRBEDA=0.0
      VDRBEDSED=0.0
      VDRBEDSND=0.0
      VDRDEPO=0.0
      VDRHBEDA1=0.0
      VDRRSPO=0.0
      VDWASTE=0.0
      VE0=0.0
      VE1DT1=0.0
      VECLSHA=0.0
      VEGSERB=0.0
      VEGSERBT=0.0
      VEGSERH=0.0
      VEGSERHT=0.0
      VEGSERR=0.0
      VEGSERRT=0.0
      VELPF=0.0
      VELSHA=0.0
      VESLSHA=0.0
      VETLSHA=0.0
      VFRBED=0.0
      VFRBED1=0.0
      VHDX=0.0
      VHDX1=0.0
      VHDX1ATU=0.0
      VHDX1E=0.0
      VHDX2=0.0
      VHDX2E=0.0
      VHDXATU=0.0
      VHDXE=0.0
      VHDXED=0.0
      VHDXWQ=0.0
      VHE=0.0
      VHLPF=0.0
      VIRT=0.0
      VLPF=0.0
      VLSHA=0.0
      VMPLRPD=0.0
      VOLBW2=0.0
      VOLBW3=0.0
      VOLPERC=0.0
      VOLSEL=0.0
      VOLTOX=0.0
      VOLWQ=0.0
      VPA=0.0
      VPLRPD=0.0
      VPX=0.0
      VPY=0.0
      VPZ=0.0
      VSIN=0.0
      VSLSHA=0.0
      VTLPF=0.0
      VTLSHA=0.0
      VU=0.0
      VVLSHA=0.0
      VVPT=0.0
      VVV=0.0
      VWQ=0.0
      VWVMAG=0.0
      VXXSUM=0.0
      VYYSUM=0.0
      W=0.0
      W1=0.0
      W2=0.0
      WACCWE=0.0
      WAGD=0.0
      WC=0.0
      WC2=0.0
      WINDD=0.0
      WINDS=0.0
      WINDST=0.0
      WINDSTKA=0.0
      WINDSTKA_SAVE=0.0
      WIRT=0.0
      WKQ=0.0
      WLPF=0.0
      WLSHA=0.0
      WMPLRPD=0.0
      WNDVELE=0.0
      WNDVELN=0.0
      WNDWHT=0.0
      WPERDX=0.0
      WPERDY=0.0
      WPLRPD=0.0
      WQAPC=0.0
      WQATML=0.0
      WQBCSET=0.0
      WQBDSET=0.0
      WQBFCOD=0.0
      WQBFNH4=0.0
      WQBFNO3=0.0
      WQBFO2=0.0
      WQBFPO4D=0.0
      WQBFSAD=0.0
      WQBGSET=0.0
      WQBMC=0.0
      WQBMD=0.0
      WQBMG=0.0
      WQBMM=0.0
      WQBMRC=0.0
      WQBMRD=0.0
      WQBMRG=0.0
      WQBMRM=0.0
      WQCHL=0.0
      !WQCSER=0.0
      WQDENIT=0.0
      WQDFBC=0.0
      WQDFBD=0.0
      WQDFBG=0.0
      WQDFLC=0.0
      WQDFLN=0.0
      WQDFLP=0.0
      WQDFRC=0.0
      WQDFRN=0.0
      WQDFRP=0.0
      WQDFSI=0.0
      WQDOPM=0.0
      WQDOS=0.0
!C      WQDSQ=0.0
      WQH10=0.0
      WQHT=0.0
      WQI0BOT=0.0
      WQKBP=0.0
      WQKCD=0.0
      WQKCOD=0.0
      WQKDC=0.0
      WQKDCALM=0.0
      WQKDON=0.0
      WQKDOP=0.0
      WQKEB=0.0
      WQKETMN=0.0
      WQKETMX=0.0
      WQKETOT=0.0
      WQKETSUM=0.0
      WQKHCOD=0.0
      WQKHR=0.0
      WQKHRM=0.0
      WQKK=0.0
      WQKLPC=0.0
      WQKLPN=0.0
      WQKLPP=0.0
      WQKMV=0.0
      WQKMVA=0.0
      WQKMVB=0.0
      WQKMVC=0.0
      WQKMVD=0.0
      WQKMVE=0.0
      WQKMVMIN=0.0
      WQKRDOS=0.0
      WQKRO=0.0
      WQKRPC=0.0
      WQKRPN=0.0
      WQKRPP=0.0
      WQKSUA=0.0
      WQKTR=0.0
      WQLPSET=0.0
      WQN17=0.0
      WQNIT=0.0
	WQO=0.0
      WQO18=0.0
      WQOBCE=0.0
      WQOBCN=0.0
      WQOBCS=0.0
      WQOBCW=0.0
      WQOBTOT=0.0
      WQP19=0.0
      WQPC=0.0
      WQPD=0.0
      WQPG=0.0
      WQPM=0.0
      WQPMC=0.0
      WQPMD=0.0
      WQPMG=0.0
      WQPMM=0.0
      WQPNC=0.0
      WQPND=0.0
      WQPNG=0.0
      WQPNM=0.0
      WQPO4D=0.0
      WQPRC=0.0
      WQPRD=0.0
      WQPRG=0.0
      WQPRM=0.0
      WQPRRC=0.0
      WQPRRD=0.0
      WQPRRG=0.0
      WQPRRM=0.0
      WQPSQ=0.0
!C      WQPSQC=0.0  NOT USED
      WQPSSER=0.0
      WQPSSRT=0.0
      WQR20=0.0
      WQRPSET=0.0
      WQRR=0.0
      WQSAD=0.0
      WQSDCOEF=0.0
      WQT10=0.0
      WQT17=0.0
      WQTAMP=0.0
      WQTD1FCB=0.0
      WQTD2FCB=0.0
      WQTDGC=0.0
      WQTDGD=0.0
      WQTDGG=0.0
      WQTDGM=0.0
      WQTDGP=0.0
      WQTDHDR=0.0
      WQTDKR=0.0
      WQTDMNL=0.0
      WQTDNIT=0.0
      WQTDRC=0.0
      WQTDRD=0.0
      WQTDRG=0.0
      WQTDRM=0.0
      WQTDTAM=0.0
      WQTEMMAX=0.0
      WQTEMMIN=0.0
      WQTEMSUM=0.0
      WQV=0.0
      WQVMAX=0.0
      WQVMIN=0.0
      WQVO=0.0
      WQVSUM=0.0
      WQWDSL=0.0
      WQWPSL=0.0
      WQWPSLC=0.0
      WQWSC=0.0
      WQWSD=0.0
      WQWSG=0.0
      WQWSLP=0.0
      WQWSRP=0.0
      WQWSS=0.0
      WQWSSET=0.0
      WRSPB=0.0
      WRSPBA=0.0
      WRSPO=0.0
      WRSPS=0.0
      WRSPSA=0.0
      WS=0.0
      WS2=0.0
      WSEDO=0.0
      WSETA=0.0
      WTCI=0.0
      WTLPF=0.0
      WVDISP=0.0
      WVDTKEM=0.0
      WVDTKEP=0.0
      WVENEP=0.0
      WVFRQL=0.0
      WVHUU=0.0
      WVHUV=0.0
      WVHVV=0.0
      WVKHC=0.0
      WVKHP=0.0
      WVKHU=0.0
      WVKHV=0.0
      WVPP=0.0
      WVPT=0.0
      WVPU=0.0
      WVPV=0.0
      WVTMP1=0.0
      WVTMP2=0.0
      WVTMP3=0.0
      WVTMP4=0.0
      WVWHA=0.0
      WWQ=0.0
      WWW=0.0
      WZ=0.0
      WZ1=0.0
      XBENMUD=0.0
      XDOALL=0.0
      XDOCOD=0.0
      XDODEF=0.0
      XDODOC=0.0
      XDODZ=0.0
      XDOKAR=0.0
      XDONIT=0.0
      XDOOUT=0.0
      XDOPPB=0.0
      XDOPPM=0.0
      XDOPSL=0.0
      XDORRB=0.0
      XDORRM=0.0
      XDOSAT=0.0
      XDOSOD=0.0
      XDOTRN=0.0
      XJETL=0.0
      XLIMCO2C=0.0
      XLIMCO2D=0.0
      XLIMCO2G=0.0
      XLIMCO2M=0.0
      XLIMDM=0.0
      XLIMIC=0.0
      XLIMID=0.0
      XLIMIG=0.0
      XLIMIM=0.0
      XLIMNC=0.0
      XLIMND=0.0
      XLIMNG=0.0
      XLIMNM=0.0
      XLIMPC=0.0
      XLIMPD=0.0
      XLIMPG=0.0
      XLIMPM=0.0
      XLIMTC=0.0
      XLIMTD=0.0
      XLIMTG=0.0
      XLIMTM=0.0
      XLIMVM=0.0
      XLRPD=0.0
      XMACSUM=0.0
      XMLRPD=0.0
      XSMO20=0.0
      YJETL=0.0
      YLRPD=0.0
      YMLRPD=0.0
      Z=0.0
      ZAD=0.0
      ZBEDC=0.0
      ZBEDG=0.0
      ZBEDGT=0.0
      ZBR=0.0
      ZBRE=0.0
      ZBRSED=0.0
      ZELBED=0.0
      ZELBED1=0.0
      ZELBEDA=0.0
      ZELBEDA1=0.0
      ZEQ=0.0
      ZEQD=0.0
      ZEQDI=0.0
      ZEQI=0.0
      ZETATOP=0.0
      ZILRPD=0.0
      ZJET=0.0
      ZLRPD=0.0
      ZMLRPD=0.0
      ZP=0.0
      ZZ=0.0
      ZZP=0.0

!Initialize aquaculture related variables
      DRPRDRG=0.0
      DRPRTURB=0.0
      FXDRPR =  0.
      FYDRPR =  0.
      FXDRPRE = 0.
      FYDRPRE = 0.
   
      TATMT_M1 = 0.
      TATMT_M2 = 0.
END SUBROUTINE VARZEROReal
