.class public Lcom/android/internal/telephony/d2lteRIL;
.super Lcom/android/internal/telephony/SamsungQualcommRIL;
.source "d2lteRIL.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SamsungQualcommRIL;-><init>(Landroid/content/Context;II)V

    .line 36
    return-void
.end method


# virtual methods
.method protected responseCallList(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 14
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 46
    .local v3, "num":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 53
    .local v4, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/DriverCall;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_8

    .line 54
    new-instance v0, Lcom/android/internal/telephony/DriverCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    .line 56
    .local v0, "dc":Lcom/android/internal/telephony/DriverCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-static {v8}, Lcom/android/internal/telephony/DriverCall;->stateFromCLCC(I)Lcom/android/internal/telephony/DriverCall$State;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->state:Lcom/android/internal/telephony/DriverCall$State;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->index:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v8, v9

    :goto_1
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMpty:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_2
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isMT:Z

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->als:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 63
    .local v7, "voiceSettings":I
    iget-boolean v8, p0, Lcom/android/internal/telephony/d2lteRIL;->isGSM:Z

    if-eqz v8, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 65
    :cond_0
    if-nez v7, :cond_4

    move v8, v10

    :goto_3
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoice:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v8, v9

    :goto_4
    iput-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    .line 67
    iget-boolean v8, p0, Lcom/android/internal/telephony/d2lteRIL;->isGSM:Z

    if-eqz v8, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 72
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 74
    .local v2, "np":I
    invoke-static {v2}, Lcom/android/internal/telephony/DriverCall;->presentationFromCLIP(I)I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->numberPresentation:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->name:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v0, Lcom/android/internal/telephony/DriverCall;->namePresentation:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 78
    .local v6, "uusInfoPresent":I
    if-ne v6, v9, :cond_6

    .line 79
    new-instance v8, Lcom/android/internal/telephony/UUSInfo;

    invoke-direct {v8}, Lcom/android/internal/telephony/UUSInfo;-><init>()V

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 80
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setType(I)V

    .line 81
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v8, v11}, Lcom/android/internal/telephony/UUSInfo;->setDcs(I)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 83
    .local v5, "userData":[B
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v8, v5}, Lcom/android/internal/telephony/UUSInfo;->setUserData([B)V

    .line 84
    const-string v8, "Incoming UUS : type=%d, dcs=%d, length=%d"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getDcs()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    const/4 v12, 0x2

    iget-object v13, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v13}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v13

    array-length v13, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/d2lteRIL;->riljLogv(Ljava/lang/String;)V

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming UUS : data (string)="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v11, Ljava/lang/String;

    iget-object v12, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v12}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/d2lteRIL;->riljLogv(Ljava/lang/String;)V

    .line 89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incoming UUS : data (hex): "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v0, Lcom/android/internal/telephony/DriverCall;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v11}, Lcom/android/internal/telephony/UUSInfo;->getUserData()[B

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/d2lteRIL;->riljLogv(Ljava/lang/String;)V

    .line 96
    .end local v5    # "userData":[B
    :goto_5
    iget-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    iget v11, v0, Lcom/android/internal/telephony/DriverCall;->TOA:I

    invoke-static {v8, v11}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/internal/telephony/DriverCall;->number:Ljava/lang/String;

    .line 98
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    iget-boolean v8, v0, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v8, :cond_7

    .line 101
    iget-object v8, p0, Lcom/android/internal/telephony/d2lteRIL;->mVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 102
    const-string v8, "InCall VoicePrivacy is enabled"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/d2lteRIL;->riljLog(Ljava/lang/String;)V

    .line 53
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_2
    move v8, v10

    .line 59
    goto/16 :goto_1

    :cond_3
    move v8, v10

    .line 60
    goto/16 :goto_2

    .restart local v7    # "voiceSettings":I
    :cond_4
    move v8, v9

    .line 65
    goto/16 :goto_3

    :cond_5
    move v8, v10

    .line 66
    goto/16 :goto_4

    .line 92
    .restart local v2    # "np":I
    .restart local v6    # "uusInfoPresent":I
    :cond_6
    const-string v8, "Incoming UUS : NOT present!"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/d2lteRIL;->riljLogv(Ljava/lang/String;)V

    goto :goto_5

    .line 104
    :cond_7
    iget-object v8, p0, Lcom/android/internal/telephony/d2lteRIL;->mVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v8}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 105
    const-string v8, "InCall VoicePrivacy is disabled"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/d2lteRIL;->riljLog(Ljava/lang/String;)V

    goto :goto_6

    .line 109
    .end local v0    # "dc":Lcom/android/internal/telephony/DriverCall;
    .end local v2    # "np":I
    .end local v6    # "uusInfoPresent":I
    .end local v7    # "voiceSettings":I
    :cond_8
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 111
    if-nez v3, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/d2lteRIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 112
    iget-object v8, p0, Lcom/android/internal/telephony/d2lteRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    if-eqz v8, :cond_9

    .line 113
    const-string v8, "responseCallList: call ended, testing emergency call, notify ECM Registrants"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/d2lteRIL;->riljLog(Ljava/lang/String;)V

    .line 115
    iget-object v8, p0, Lcom/android/internal/telephony/d2lteRIL;->mEmergencyCallbackModeRegistrant:Landroid/os/Registrant;

    invoke-virtual {v8}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 119
    :cond_9
    return-object v4
.end method
