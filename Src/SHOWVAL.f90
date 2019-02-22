SUBROUTINE SHOWVAL

  ! *** REWRITTEN BY PAUL M. CRAIG  ON DEC 2006
       
  USE GLOBAL
  CHARACTER BLANK,ASTER,CSURF(32),CSALS(20),CSALB(20)
  CHARACTER UNITS*3, PARM*3
  LOGICAL status 
  SAVE    INFODT, JSHPRT, UNITS, SCALE, PARM
  REAL    T1,T2,TSPEED,ETA
  
  DATA BLANK/' '/
  DATA ASTER/'*'/
  DATA ISREAD/0/
  DATA SCALE/1.0/,UNITS/'PPM'/
  
  IF(ISDYNSTP.EQ.0)THEN  
    DELT=DT  
  ELSE  
    DELT=DTDYN  
  END IF  

  IF(ISREAD.EQ.0)THEN
    ISREAD=1
    OPEN(1,FILE='SHOW.INP',STATUS='OLD')
    DO NSKIP=1,6
      READ(1,*)
    ENDDO
    READ(1,*)NSHTYPE,NSHOWR,ICSHOW_DUM,JCSHOW_DUM,ISHPRT
    ICSHOW = XLOC(ICSHOW_DUM)
    JCSHOW = YLOC(JCSHOW_DUM)
    READ(1,*)ZSSMIN,ZSSMAX,SSALMAX
    CLOSE(1)
    NSHOWR=20
    NSHOWC=NSHOWR
    IF(ISHPRT.LT.1)ISHPRT=1
    JSHPRT=ISHPRT

    IF(NSHTYPE.GT.0.AND.NSHTYPE.LE.3)THEN
      SCALE=1.0
      UNITS='PPT'
      PARM='SAL'
    ELSEIF(NSHTYPE.EQ.4)THEN
      SCALE=1.0
      UNITS='D:C'
      PARM='TEM'
    ELSE
      ! *** MG/L
      IF(NSHTYPE.GT.1000)THEN
        ! *** KG/L
        UNITS='PPT'
        NSHTYPE=NSHTYPE-1000
        SCALE=1.0/1000.0
      ELSEIF(NSHTYPE.LT.0)THEN
        ! *** UG/L
        UNITS='PPB'
        NSHTYPE=-NSHTYPE
        SCALE=1000.0
      ENDIF
      IF(NSHTYPE.EQ.5)PARM='SED'
      IF(NSHTYPE.EQ.6)PARM='SND'
      IF(NSHTYPE.EQ.7)PARM='TSS'
      IF(NSHTYPE.EQ.8)PARM='DYE'
    ENDIF

  ENDIF

  NITERAT=NITERAT+1

  IF(NSHOWC.GE.NSHOWR)THEN
    NSHOWC=0
    IF(ISDYNSTP.GT.0)THEN
      INFODT=INFODT+1
      IF(INFODT.GT.10.OR.NITERAT.EQ.1)THEN
        WRITE(6,9000) DTL1MN,L1LOC,DTL2MN,L2LOC,DTL3MN,L3LOC
        INFODT=0
      ENDIF
    ENDIF
    
    ! *** ESTIMATE COMPUTATIONAL TIME
    IF(N.GT.1)THEN
      CALL CPU_TIME(TCGRS)
      T1=TBEGIN*TCON
      T2=(TBEGIN*TCON+TIDALP*NTC)
      TSPEED=TCGRS/(TIMESEC-T1)
      ETA=(T2-TIMESEC)*TSPEED/3600.
      T1=TCGRS/3600.
      WRITE(*,'('' ** ELAPSED CPU TIME: '',F7.2,'' (hr)  ESTIMATED TIME TO COMPLETION:'',F7.2,'' (hr)'')') T1,ETA
    ENDIF
    TIME=DT*FLOAT(N)+TCON*TBEGIN   
    IF(NSHTYPE==1)THEN
      IZSMIN=NINT(ZSSMIN)
      IZSMAX=NINT(ZSSMAX)
      ISALMAX=NINT(SSALMAX)
      WRITE(*,'(A)')'-------------------------------------------------------------------------------'
      WRITE(*,'(A)')' TIME     I   J      FREE SURFACE ELEVATION         SURFACE SAL        BOT SAL'
      WRITE(*,'(A)')' STEP                        (CM)       &              (PPT)            (PPT)'
      WRITE(*,'(16X,I3,26X,I3,'' 0'',15X,I3,'' 0'',15X,I3)') IZSMIN,IZSMAX,ISALMAX,ISALMAX
      WRITE(*,'(A)')'-------------------------------------------------------------------------------'
  IF(MAXVAL(MVEGL(:))>90.AND.TIME>0.01)WRITE(*,'("SUPPORT ENERGY LOSS",F10.4," MW-hr")')SUM(ESUP(:,:))
  IF(MAXVAL(MVEGL(:))>90.AND.TIME>0.01)WRITE(*,'("MHK ENERGY OUTPUT   ",F10.4," MW-hr")')SUM(EMHK(:,:))
  IF(MAXVAL(MVEGL(:))>90.AND.TIME>0.01)WRITE(*,'("MHK POWER OUTPUT   ",F10.4," kW")')SUM(PMHK(:,:))*1E-3

    ELSEIF(NSHTYPE==2)THEN
      WRITE(*,'(A)')'-------------------------------------------------------------------------------'
      IF(ISDYNSTP.GT.0)THEN
        WRITE(*,'(A)')'                 ELEV  VELE  VELN  SAL    AV   AB   VELE  VELN   SAL   AV    AB '
        WRITE(*,'(A)')' TIME            SURF  SURF  SURF  SUR   SURF  SURF  BOTT  BOTT   BOT  BOTT  BOTT'
        WRITE(*,'(A)')' STEP     I   J   CM   CM/S  CM/S  PPT  CM/S  CM/S   CM/S  CM/S   PPT  CM/S  LMIN'
      ELSE
        WRITE(*,'(A)')'                 ELEV  VELE  VELN  SAL    AV   AB   VELE  VELN   SAL   AV    AB '
        WRITE(*,'(A)')' TIME            SURF  SURF  SURF  SUR   SURF  SURF  BOTT  BOTT   BOT  BOTT  BOTT'
        WRITE(*,'(A)')' STEP     I   J   CM   CM/S  CM/S  PPT   CM/S  CM/S  CM/S  CM/S   PPT  CM/S  CM/S'
      ENDIF
      WRITE(*,'(A)')'-------------------------------------------------------------------------------'
  IF(MAXVAL(MVEGL(:))>90.AND.TIME>0.01)WRITE(*,'("SUPPORT ENERGY LOSS",F10.4," MW-hr")')SUM(ESUP(:,:))
  IF(MAXVAL(MVEGL(:))>90.AND.TIME>0.01)WRITE(*,'("MHK ENERGY OUTPUT  ",F10.4," MW-hr")')SUM(EMHK(:,:))
  IF(MAXVAL(MVEGL(:))>90.AND.TIME>0.01)WRITE(*,'("MHK POWER OUTPUT   ",F10.4," kW")')SUM(PMHK(:,:))*1E-3

    ELSEIF(NSHTYPE.LT.9)THEN
      WRITE(*,'(A)')'-------------------------------------------------------------------------------'
      IF(ISDYNSTP.GT.0)THEN
        WRITE(*,'(A)')'    TIME     TIME  ELEV VELE VELN  '//PARM//'   AV    AB   VELE  VELN  '//PARM//'    AV      '
        WRITE(*,'(A)')'     IN      STEP  SURF SURF SURF  SUR  SURF  SURF  BOTT  BOTT  BOTT  BOTT     '
        WRITE(*,'(A)')'    DAYS      SEC   CM  CM/S CM/S  '//UNITS//' CM/S  CM/S   CM/S  CM/S  '//UNITS//'  CM/S LMIN'
      ELSE
        WRITE(*,'(A)')'    TIME     TIME  ELEV VELE VELN  '//PARM//'   AV    AB   VELE  VELN  '//PARM//'    AV   AB '
        WRITE(*,'(A)')'     IN      STEP  SURF SURF SURF  SUR  SURF  SURF  BOTT  BOTT  BOT  BOTT  BOTT'
        WRITE(*,'(A)')'    DAYS      SEC   CM  CM/S CM/S  '//UNITS//' CM/S  CM/S   CM/S  CM/S  '//UNITS//'  CM/S CM/S'
      ENDIF
      WRITE(*,'(A)')'-------------------------------------------------------------------------------'
  IF(LMHK.AND.TIME>0.01)WRITE(*,'("SUPPORT ENERGY LOSS",F10.4," MW-hr")')SUM(ESUP(:,:))
  IF(LMHK.AND.TIME>0.01)WRITE(*,'("MHK ENERGY OUTPUT  ",F10.4," MW-hr")')SUM(EMHK(:,:))
  IF(LMHK.AND.TIME>0.01)WRITE(*,'("MHK POWER OUTPUT   ",F10.4," kW")')SUM(PMHK(:,:))*1E-3
    ENDIF
  ENDIF
  ! *** INCREMENT THE SCREEN COUNTER
  JSHPRT=JSHPRT+1
  IF(JSHPRT.LT.ISHPRT)RETURN
  if(IDNOTRVA/=0)call tecplot !Macroalgae output
  IF(OUTPUTFLAG.GE.4) THEN ! IFREMER flume
    call tecplot !User defined output subroutine for Tecplot SCJ
  ENDIF
  inquire(file='ensight.inp',exist=status)
  if(status) call ensight
  JSHPRT=1
  NSHOWC=NSHOWC+1

  ! *** SETUP THE VARIABLES
  IF(NSHTYPE==1)THEN
    DO M=1,32
      CSURF(M)=BLANK
    ENDDO
    DO M=1,20
      CSALS(M)=BLANK
      CSALB(M)=BLANK
    ENDDO
    L=LIJ(ICSHOW,JCSHOW)
    ZSURF=(HP(L)+BELV(L))*100.0
    ZSTMP=(31.*(ZSURF-ZSSMIN)/(ZSSMAX-ZSSMIN))+1.
    IZSTMP=NINT(ZSTMP)
    IF(IZSTMP.GT.32)IZSTMP=32
    IF(IZSTMP.LT.1)IZSTMP=1
    CSURF(IZSTMP)=ASTER
    SSTMP=(19.*SAL(L,KC)/SSALMAX)+1.
    SBTMP=(19.*SAL(L,1)/SSALMAX)+1.
    ISSTMP=NINT(SSTMP)
    ISBTMP=NINT(SBTMP)
    IF(ISSTMP.GT.20)ISSTMP=20
    IF(ISSTMP.LT.1)ISSTMP=1
    IF(ISBTMP.GT.20)ISBTMP=20
    IF(ISBTMP.LT.1)ISBTMP=1
    CSALS(ISSTMP)=ASTER
    CSALB(ISBTMP)=ASTER
    WRITE(*,'(I5,I5,I5,1X,32A1,20A1,20A1)')N,ICSHOW,JCSHOW,(CSURF(I),I=1,32),(CSALS(J),J=1,20),(CSALB(K),K=1,20)
  ELSE
    IF(ISDYNSTP.EQ.0)THEN
      TIME=(DT*FLOAT(N)+TCON*TBEGIN)/86400.0
    ELSE
      TIME=TIMESEC/86400.0
    ENDIF

    L=LIJ(ICSHOW,JCSHOW)
    LN=LNC(L)
    ZSURF=(HP(L)+BELV(L))*100.0
    UTMP=0.5*STCUV(L)*(U(LEAST(L),KC)+U(L,KC))*100.
    VTMP=0.5*STCUV(L)*(V(LN,KC)+V(L,KC))*100.
    VELEKC=CUE(L)*UTMP+CVE(L)*VTMP
    VELNKC=CUN(L)*UTMP+CVN(L)*VTMP
    UTMP=0.5*STCUV(L)*(U(LEAST(L),1)+U(L,1))*100.
    VTMP=0.5*STCUV(L)*(V(LN,1)+V(L,1))*100.
    VELEKB=CUE(L)*UTMP+CVE(L)*VTMP
    VELNKB=CUN(L)*UTMP+CVN(L)*VTMP
    AVKS=AV(L,KS)*10000.*HP(L)
    AVKB=AV(L,1)*10000.*HP(L)
    ABKS=AB(L,KS)*10000.*HP(L)
    ABKB=AB(L,1)*10000.*HP(L)

    IZSURF=NINT(ZSURF)
    IVELEKC=NINT(VELEKC)
    IVELNKC=NINT(VELNKC)
    IAVKS=NINT(AVKS)
    IABKS=NINT(ABKS)
    IVELEKB=NINT(VELEKB)
    IVELNKB=NINT(VELNKB)
    IAVKB=NINT(AVKB)
    IABKB=NINT(ABKB)

    ! *** CONSTITUENTS
    IF(NSHTYPE.EQ.3)THEN
      CKC=SAL(L,KC)
      CKB=SAL(L,1)
    ELSEIF(NSHTYPE.EQ.4)THEN
      CKC=TEM(L,KC)
      CKB=TEM(L,1)
    ELSEIF(NSHTYPE.EQ.5)THEN
      CKC=SEDT(L,KC)*SCALE
      CKB=SEDT(L,1)*SCALE
    ELSEIF(NSHTYPE.EQ.6)THEN
      CKC=SNDT(L,KC)*SCALE
      CKB=SNDT(L,1)*SCALE
    ELSEIF(NSHTYPE.EQ.7)THEN
      CKC=(SEDT(L,KC)+SNDT(L,KC))*SCALE
      CKB=(SEDT(L,1)+SNDT(L,1))*SCALE
    ELSEIF(NSHTYPE.EQ.8)THEN
      CKC=DYE(L,KC)*SCALE
      CKB=DYE(L,1)*SCALE
    ENDIF

    ICKC=NINT(CKC)
    ICKB=NINT(CKB)
    IF(NSHTYPE.EQ.2)THEN
      IF(ISDYNSTP.GT.0)THEN
        WRITE(*,9200)N,ICSHOW,JCSHOW,IZSURF,IVELEKC,IVELNKC,ICKC,IAVKS,IABKS,IVELEKB,IVELNKB,ICKB,IAVKB,LMINSTEP
      ELSE
        WRITE(*,9200)N,ICSHOW,JCSHOW,IZSURF,IVELEKC,IVELNKC,ICKC,IAVKS,IABKS,IVELEKB,IVELNKB,ICKB,IAVKB,IABKB
      ENDIF
    ELSE  
      IF(ISDYNSTP.GT.0)THEN
        WRITE(*,9100)TIME,DELT,IZSURF,IVELEKC,IVELNKC,ICKC,IAVKS,IABKS,IVELEKB,IVELNKB,ICKB,IAVKB,LMINSTEP
      ELSE
        WRITE(*,9100)TIME,DELT,IZSURF,IVELEKC,IVELNKC,ICKC,IAVKS,IABKS,IVELEKB,IVELNKB,ICKB,IAVKB,IABKB
      ENDIF
    ENDIF
  ENDIF

  RETURN

  9000 FORMAT(/' AUTOSTEPPING SUMMARY (WITH SAFETY FACTOR):',/     &
               '   METHOD1:  MOMENTUM CHECK (DT,L): ',F10.4,I5,/   &
               '   METHOD2: ADVECTION CHECK (DT,L): ',F10.4,I5,/   &
               '   METHOD3: BTM FRICT CHECK (DT,L): ',F10.4,I5//)
  9100 FORMAT(F9.3,F8.3,I6,3I5,4I6,I5,2I6)
  9200 FORMAT(I7,2I4,3I6,I5,4I6,I5,2I6)

END
