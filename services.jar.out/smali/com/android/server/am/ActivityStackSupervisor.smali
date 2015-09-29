.class public final Lcom/android/server/am/ActivityStackSupervisor;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_APP:Z = false

.field static final DEBUG_IDLE:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_STATES:Z = false

.field public static final HOME_STACK_ID:I = 0x0

.field static final IDLE_NOW_MSG:I = 0x65

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0x64

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x68

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x66

.field static final SLEEP_TIMEOUT:I = 0x1388

.field static final SLEEP_TIMEOUT_MSG:I = 0x67

.field private static final STACK_STATE_HOME_IN_BACK:I = 0x2

.field private static final STACK_STATE_HOME_IN_FRONT:I = 0x0

.field private static final STACK_STATE_HOME_TO_BACK:I = 0x1

.field private static final STACK_STATE_HOME_TO_FRONT:I = 0x3

.field static final VALIDATE_WAKE_LOCK_CALLER:Z


# instance fields
.field final mCancelledThumbnails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mCurTaskId:I

.field private mCurrentUser:I

.field mDismissKeyguardOnNextActivity:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusedStack:Lcom/android/server/am/ActivityStack;

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mGoingToSleepActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

.field private mHomeStack:Lcom/android/server/am/ActivityStack;

.field private mLastStackId:I

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field mPrivacyGuardPackageName:Ljava/lang/String;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field mSleepTimeout:Z

.field private mStackState:I

.field private mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/UserStartedState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserLeaving:Z

.field mUserStackInFront:Landroid/util/SparseIntArray;

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    .line 128
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 132
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    .line 152
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 175
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    .line 179
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 186
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 189
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 207
    new-instance v1, Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    .line 212
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mPrivacyGuardPackageName:Ljava/lang/String;

    .line 216
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 217
    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    .line 218
    iput-object p3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    .line 219
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 220
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 221
    new-instance v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-direct {v1, p0, p3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    .line 225
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 227
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 228
    return-void
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "complete"    # Z
    .param p6, "brief"    # Z
    .param p7, "client"    # Z
    .param p8, "dumpPackage"    # Ljava/lang/String;
    .param p9, "needNL"    # Z
    .param p10, "header1"    # Ljava/lang/String;
    .param p11, "header2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2506
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v6, 0x0

    .line 2507
    .local v6, "lastTask":Lcom/android/server/am/TaskRecord;
    const/4 v5, 0x0

    .line 2508
    .local v5, "innerPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2509
    .local v1, "args":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 2510
    .local v7, "printed":Z
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_e

    .line 2511
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 2512
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p8, :cond_1

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2510
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2515
    :cond_1
    if-nez v5, :cond_2

    .line 2516
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "      "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2517
    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/String;

    .line 2519
    :cond_2
    const/4 v7, 0x1

    .line 2520
    if-nez p6, :cond_9

    if-nez p5, :cond_3

    invoke-virtual {v8}, Lcom/android/server/am/ActivityRecord;->isInHistory()Z

    move-result v10

    if-nez v10, :cond_9

    :cond_3
    const/4 v3, 0x1

    .line 2521
    .local v3, "full":Z
    :goto_2
    if-eqz p9, :cond_4

    .line 2522
    const-string v10, ""

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2523
    const/16 p9, 0x0

    .line 2525
    :cond_4
    if-eqz p10, :cond_5

    .line 2526
    move-object/from16 v0, p10

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2527
    const/16 p10, 0x0

    .line 2529
    :cond_5
    if-eqz p11, :cond_6

    .line 2530
    move-object/from16 v0, p11

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2531
    const/16 p11, 0x0

    .line 2533
    :cond_6
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v6, v10, :cond_7

    .line 2534
    iget-object v6, v8, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2535
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2536
    if-eqz v3, :cond_a

    const-string v10, "* "

    :goto_3
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2537
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2538
    if-eqz v3, :cond_b

    .line 2539
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, p1, v10}, Lcom/android/server/am/TaskRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2548
    :cond_7
    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_c

    const-string v10, "  * "

    :goto_5
    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2549
    const-string v10, " #"

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v10, ": "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2550
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2551
    if-eqz v3, :cond_d

    .line 2552
    invoke-virtual {v8, p1, v5}, Lcom/android/server/am/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2560
    :cond_8
    :goto_6
    if-eqz p7, :cond_0

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_0

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_0

    .line 2563
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 2565
    :try_start_0
    new-instance v9, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v9}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2567
    .local v9, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_1
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v10, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v9}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    iget-object v12, v8, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v10, v11, v12, v5, v1}, Landroid/app/IApplicationThread;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2571
    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, p0, v10, v11}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2573
    :try_start_2
    invoke-virtual {v9}, Lcom/android/internal/os/TransferPipe;->kill()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2580
    .end local v9    # "tp":Lcom/android/internal/os/TransferPipe;
    :goto_7
    const/16 p9, 0x1

    goto/16 :goto_1

    .line 2520
    .end local v3    # "full":Z
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2536
    .restart local v3    # "full":Z
    :cond_a
    const-string v10, "  "

    goto :goto_3

    .line 2540
    :cond_b
    if-eqz p5, :cond_7

    .line 2542
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v10, :cond_7

    .line 2543
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v10, "  "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2544
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->toInsecureStringWithClip()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 2548
    :cond_c
    const-string v10, "    "

    goto :goto_5

    .line 2553
    :cond_d
    if-eqz p5, :cond_8

    .line 2555
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2556
    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v10, :cond_8

    .line 2557
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6

    .line 2573
    .restart local v9    # "tp":Lcom/android/internal/os/TransferPipe;
    :catchall_0
    move-exception v10

    :try_start_3
    invoke-virtual {v9}, Lcom/android/internal/os/TransferPipe;->kill()V

    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2575
    .end local v9    # "tp":Lcom/android/internal/os/TransferPipe;
    :catch_0
    move-exception v2

    .line 2576
    .local v2, "e":Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Failure while dumping the activity: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2577
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 2578
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Got a RemoteException while dumping the activity"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 2583
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "full":Z
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_e
    return v7
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "dumpPackage"    # Ljava/lang/String;
    .param p3, "needSep"    # Z
    .param p4, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2433
    if-eqz p1, :cond_2

    .line 2434
    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2435
    :cond_0
    if-eqz p3, :cond_1

    .line 2436
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2438
    :cond_1
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2439
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2440
    const/4 v0, 0x1

    .line 2443
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static stackStateToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "stackState"    # I

    .prologue
    .line 2408
    packed-switch p0, :pswitch_data_0

    .line 2413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown stackState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2409
    :pswitch_0
    const-string v0, "STACK_STATE_HOME_IN_FRONT"

    goto :goto_0

    .line 2410
    :pswitch_1
    const-string v0, "STACK_STATE_HOME_TO_BACK"

    goto :goto_0

    .line 2411
    :pswitch_2
    const-string v0, "STACK_STATE_HOME_IN_BACK"

    goto :goto_0

    .line 2412
    :pswitch_3
    const-string v0, "STACK_STATE_HOME_TO_FRONT"

    goto :goto_0

    .line 2408
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method acquireLaunchWakelock()V
    .locals 4

    .prologue
    const/16 v3, 0x68

    .line 1809
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1810
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1814
    :cond_0
    return-void
.end method

.method final activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;
    .locals 22
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fromTimeout"    # Z
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1821
    const/16 v21, 0x0

    .line 1822
    .local v21, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v16, 0x0

    .line 1823
    .local v16, "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v20, 0x0

    .line 1824
    .local v20, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    const/4 v12, 0x0

    .line 1825
    .local v12, "NS":I
    const/4 v11, 0x0

    .line 1826
    .local v11, "NF":I
    const/16 v18, 0x0

    .line 1827
    .local v18, "sendThumbnail":Landroid/app/IApplicationThread;
    const/4 v14, 0x0

    .line 1828
    .local v14, "booting":Z
    const/4 v15, 0x0

    .line 1829
    .local v15, "enableScreen":Z
    const/4 v13, 0x0

    .line 1831
    .local v13, "activityRemoved":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1832
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_3

    .line 1835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1836
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->finishLaunchTickingLocked()V

    .line 1837
    if-eqz p2, :cond_0

    .line 1838
    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 1846
    :cond_0
    if-eqz p3, :cond_1

    .line 1847
    move-object/from16 v0, p3

    iput-object v0, v4, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 1852
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 1854
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v2, :cond_2

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_2

    .line 1855
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v18, v0

    .line 1856
    const/4 v2, 0x0

    iput-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 1860
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v2, :cond_3

    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 1862
    const/4 v15, 0x1

    .line 1866
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesIdle()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1867
    if-eqz v4, :cond_4

    .line 1868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 1871
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 1877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1879
    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1883
    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v21

    .line 1884
    if-eqz v21, :cond_a

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1885
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_7

    .line 1886
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1887
    .restart local v16    # "finishes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1891
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1892
    .local v9, "NT":I
    if-lez v9, :cond_b

    .line 1893
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1894
    .local v10, "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1899
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v14, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 1901
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 1904
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1905
    new-instance v20, Ljava/util/ArrayList;

    .end local v20    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1906
    .restart local v20    # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserStartedState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1910
    :cond_9
    move-object/from16 v7, v18

    .line 1911
    .local v7, "thumbnailThread":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    new-instance v5, Lcom/android/server/am/ActivityStackSupervisor$1;

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/ActivityStackSupervisor$1;-><init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/IApplicationThread;Landroid/os/IBinder;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->post(Ljava/lang/Runnable;)Z

    .line 1933
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v12, :cond_d

    .line 1934
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1935
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v19, v0

    .line 1936
    .local v19, "stack":Lcom/android/server/am/ActivityStack;
    iget-boolean v2, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_c

    .line 1937
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    .line 1933
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1884
    .end local v7    # "thumbnailThread":Landroid/app/IApplicationThread;
    .end local v9    # "NT":I
    .end local v10    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v17    # "i":I
    .end local v19    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 1896
    .restart local v9    # "NT":I
    :cond_b
    const/4 v10, 0x0

    .restart local v10    # "thumbnails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto :goto_1

    .line 1939
    .restart local v7    # "thumbnailThread":Landroid/app/IApplicationThread;
    .restart local v17    # "i":I
    .restart local v19    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_c
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_3

    .line 1945
    .end local v19    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_d
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    if-ge v0, v11, :cond_e

    .line 1946
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1947
    .restart local v4    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string v6, "finish-idle"

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z

    move-result v2

    or-int/2addr v13, v2

    .line 1945
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1950
    :cond_e
    if-eqz v14, :cond_12

    .line 1951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 1958
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 1962
    if-eqz v15, :cond_10

    .line 1963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 1966
    :cond_10
    if-eqz v13, :cond_11

    .line 1967
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 1970
    :cond_11
    return-object v4

    .line 1952
    :cond_12
    if-eqz v20, :cond_f

    .line 1953
    const/16 v17, 0x0

    :goto_5
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_f

    .line 1954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UserStartedState;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->finishUserSwitch(Lcom/android/server/am/UserStartedState;)V

    .line 1953
    add-int/lit8 v17, v17, 0x1

    goto :goto_5
.end method

.method activitySleptLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2215
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2216
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2217
    return-void
.end method

.method adjustStackFocus(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
    .locals 10
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1291
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1292
    .local v3, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1293
    :cond_0
    if-eqz v3, :cond_3

    .line 1294
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1295
    .local v4, "taskStack":Lcom/android/server/am/ActivityStack;
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eq v5, v4, :cond_1

    .line 1298
    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1330
    .end local v4    # "taskStack":Lcom/android/server/am/ActivityStack;
    :cond_1
    :goto_1
    return-object v4

    .restart local v4    # "taskStack":Lcom/android/server/am/ActivityStack;
    :cond_2
    move-object v5, v4

    .line 1298
    goto :goto_0

    .line 1306
    .end local v4    # "taskStack":Lcom/android/server/am/ActivityStack;
    :cond_3
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_4

    .line 1309
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1

    .line 1312
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "stackNdx":I
    :goto_2
    if-lez v2, :cond_6

    .line 1313
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 1314
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1317
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1318
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1

    .line 1312
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1323
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_6
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->createStack(IIIF)I

    move-result v1

    .line 1327
    .local v1, "stackId":I
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1328
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1

    .line 1330
    .end local v1    # "stackId":I
    .end local v2    # "stackNdx":I
    :cond_7
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_1
.end method

.method allPausedActivitiesComplete()Z
    .locals 6

    .prologue
    .line 480
    const/4 v0, 0x1

    .line 481
    .local v0, "pausing":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "stackNdx":I
    :goto_0
    if-ltz v3, :cond_0

    .line 482
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 483
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 484
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_1

    iget-object v4, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_1

    .line 491
    const/4 v0, 0x0

    .line 495
    .end local v0    # "pausing":Z
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return v0

    .line 481
    .restart local v0    # "pausing":Z
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method

.method allResumedActivitiesComplete()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 422
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 423
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 424
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 425
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 426
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v4, v5, :cond_0

    .line 446
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return v3

    .line 422
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 432
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    packed-switch v4, :pswitch_data_0

    .line 446
    :goto_2
    :pswitch_0
    const/4 v3, 0x1

    goto :goto_1

    .line 437
    :pswitch_1
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_2

    .line 443
    :pswitch_2
    iput v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_2

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method allResumedActivitiesIdle()Z
    .locals 4

    .prologue
    .line 408
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_3

    .line 409
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 410
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 408
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 413
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 414
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->idle:Z

    if-nez v3, :cond_0

    .line 415
    :cond_2
    const/4 v3, 0x0

    .line 418
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return v3

    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method allResumedActivitiesVisible()Z
    .locals 4

    .prologue
    .line 450
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 451
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 452
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 453
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v3, :cond_1

    .line 454
    :cond_0
    const/4 v3, 0x0

    .line 457
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return v3

    .line 450
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 457
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method

.method anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 309
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 310
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 311
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->taskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    .line 312
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    if-eqz v2, :cond_0

    .line 316
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :goto_1
    return-object v2

    .line 309
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 316
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method attachApplicationLocked(Lcom/android/server/am/ProcessRecord;Z)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "headless"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "didSomething":Z
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 377
    .local v3, "processName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    .local v5, "stackNdx":I
    :goto_0
    if-ltz v5, :cond_3

    .line 378
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    .line 379
    .local v4, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 377
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {v4, v9}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 383
    .local v2, "hr":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_0

    .line 384
    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v6, :cond_0

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v7, :cond_0

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 387
    if-eqz p2, :cond_2

    .line 388
    :try_start_0
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting activities not supported on headless device: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 393
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in new application when starting activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    throw v1

    .line 390
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {p0, v2, p1, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 391
    const/4 v0, 0x1

    goto :goto_1

    .line 401
    .end local v2    # "hr":Lcom/android/server/am/ActivityRecord;
    .end local v4    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    if-nez v0, :cond_4

    .line 402
    const/4 v6, 0x0

    invoke-virtual {p0, v9, v6}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 404
    :cond_4
    return v0
.end method

.method checkReadyForSleepLocked()V
    .locals 3

    .prologue
    .line 2220
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2263
    :cond_0
    :goto_0
    return-void

    .line 2225
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    if-nez v2, :cond_5

    .line 2226
    const/4 v0, 0x0

    .line 2227
    .local v0, "dontSleep":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2228
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v2

    or-int/2addr v0, v2

    .line 2227
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2231
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 2235
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleIdleLocked()V

    .line 2236
    const/4 v0, 0x1

    .line 2239
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 2243
    const/4 v0, 0x1

    .line 2246
    :cond_4
    if-nez v0, :cond_0

    .line 2251
    .end local v0    # "dontSleep":Z
    .end local v1    # "stackNdx":I
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .restart local v1    # "stackNdx":I
    :goto_2
    if-ltz v1, :cond_6

    .line 2252
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->goToSleep()V

    .line 2251
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 2255
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2257
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2258
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2260
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v2, :cond_0

    .line 2261
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method

.method closeSystemDialogsLocked()V
    .locals 4

    .prologue
    .line 1982
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1983
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1984
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 1985
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->closeSystemDialogsLocked()V

    .line 1983
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1987
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .locals 3

    .prologue
    .line 2200
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2201
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2202
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2204
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_2

    .line 2205
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 2206
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->awakeFromSleepingLocked()V

    .line 2207
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2208
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 2204
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2211
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2212
    return-void
.end method

.method createStack()I
    .locals 6

    .prologue
    .line 2096
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    if-gtz v0, :cond_1

    .line 2097
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    .line 2099
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/ActivityStack;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    iget v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2104
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLastStackId:I

    return v0
.end method

.method dismissKeyguard()V
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    .line 240
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 242
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2418
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDismissKeyguardOnNextActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2419
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2420
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFocusedStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2421
    const-string v0, " mStackState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisor;->stackStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2422
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSleepTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2423
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2424
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserStackInFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2425
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z
    .locals 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z
    .param p4, "dumpClient"    # Z
    .param p5, "dumpPackage"    # Ljava/lang/String;

    .prologue
    .line 2448
    const/16 v23, 0x0

    .line 2449
    .local v23, "printed":Z
    const/4 v8, 0x0

    .line 2450
    .local v8, "needSep":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 2451
    .local v21, "numStacks":I
    const/16 v25, 0x0

    .local v25, "stackNdx":I
    :goto_0
    move/from16 v0, v25

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 2452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2453
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v24, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2454
    .local v24, "stackHeader":Ljava/lang/StringBuilder;
    const-string v3, "  Stack #"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2456
    const-string v3, ":"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2457
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityStack;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2459
    iget-object v11, v2, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    const-string v12, "    "

    const-string v13, "Run"

    const/4 v14, 0x0

    if-nez p3, :cond_4

    const/4 v15, 0x1

    :goto_1
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "    Running activities (most recent first):"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2462
    move/from16 v8, v23

    .line 2463
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mPausingActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v22

    .line 2465
    .local v22, "pr":Z
    if-eqz v22, :cond_0

    .line 2466
    const/16 v23, 0x1

    .line 2467
    const/4 v8, 0x0

    .line 2469
    :cond_0
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mResumedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v22

    .line 2471
    if-eqz v22, :cond_1

    .line 2472
    const/16 v23, 0x1

    .line 2473
    const/4 v8, 0x0

    .line 2475
    :cond_1
    if-eqz p3, :cond_3

    .line 2476
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastPausedActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v22

    .line 2478
    if-eqz v22, :cond_2

    .line 2479
    const/16 v23, 0x1

    .line 2480
    const/4 v8, 0x1

    .line 2482
    :cond_2
    iget-object v3, v2, Lcom/android/server/am/ActivityStack;->mLastNoHistoryActivity:Lcom/android/server/am/ActivityRecord;

    const-string v4, "    mLastNoHistoryActivity: "

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-static {v0, v3, v1, v8, v4}, Lcom/android/server/am/ActivityStackSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2485
    :cond_3
    move/from16 v8, v23

    .line 2451
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_0

    .line 2459
    .end local v22    # "pr":Z
    :cond_4
    const/4 v15, 0x0

    goto :goto_1

    .line 2488
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v24    # "stackHeader":Ljava/lang/StringBuilder;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Fin"

    const/4 v14, 0x0

    if-nez p3, :cond_6

    const/4 v15, 0x1

    :goto_2
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to finish:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2490
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Stop"

    const/4 v14, 0x0

    if-nez p3, :cond_7

    const/4 v15, 0x1

    :goto_3
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to stop:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2492
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Wait"

    const/4 v14, 0x0

    if-nez p3, :cond_8

    const/4 v15, 0x1

    :goto_4
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting for another to become visible:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2495
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Sleep"

    const/4 v14, 0x0

    if-nez p3, :cond_9

    const/4 v15, 0x1

    :goto_5
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to sleep:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2497
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleepActivities:Ljava/util/ArrayList;

    const-string v12, "  "

    const-string v13, "Sleep"

    const/4 v14, 0x0

    if-nez p3, :cond_a

    const/4 v15, 0x1

    :goto_6
    const/16 v16, 0x0

    const/16 v18, 0x1

    const-string v19, "  Activities waiting to sleep:"

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v17, p5

    invoke-static/range {v9 .. v20}, Lcom/android/server/am/ActivityStackSupervisor;->dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    or-int v23, v23, v3

    .line 2500
    return v23

    .line 2488
    :cond_6
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2490
    :cond_7
    const/4 v15, 0x0

    goto :goto_3

    .line 2492
    :cond_8
    const/4 v15, 0x0

    goto :goto_4

    .line 2495
    :cond_9
    const/4 v15, 0x0

    goto :goto_5

    .line 2497
    :cond_a
    const/4 v15, 0x0

    goto :goto_6
.end method

.method ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 4
    .param p1, "starting"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "configChanges"    # I

    .prologue
    .line 2288
    const/4 v0, 0x0

    .line 2289
    .local v0, "showHomeBehindStack":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2290
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2291
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2292
    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)Z

    move-result v0

    .line 2289
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2297
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 2298
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2299
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2300
    invoke-virtual {v1, p1, p2, v0}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 2297
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2303
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    return-void
.end method

.method findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 2141
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2142
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2143
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2147
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v0

    .line 2141
    .restart local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2147
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2125
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_2

    .line 2126
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2127
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2125
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2131
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 2132
    .local v0, "ar":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 2137
    .end local v0    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method findTaskToMoveToFrontLocked(IILandroid/os/Bundle;)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 2071
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "stackNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2072
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActivityStack;->findTaskToMoveToFrontLocked(IILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2078
    :cond_0
    return-void

    .line 2071
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2063
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2064
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2065
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2066
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->finishTopRunningActivityLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2064
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2068
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-void
.end method

.method forceStopPackageLocked(Ljava/lang/String;ZZI)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "doit"    # Z
    .param p3, "evenPersistent"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 1997
    const/4 v0, 0x0

    .line 1998
    .local v0, "didSomething":Z
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1999
    .local v1, "numStacks":I
    const/4 v3, 0x0

    .local v3, "stackNdx":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 2000
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 2001
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/am/ActivityStack;->forceStopPackageLocked(Ljava/lang/String;ZZI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2002
    const/4 v0, 0x1

    .line 1999
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2005
    .end local v2    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    return v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2428
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->getDumpActivitiesLocked(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getFocusedStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 255
    :goto_0
    return-object v0

    .line 248
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    packed-switch v0, :pswitch_data_0

    .line 255
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getLastStack()Lcom/android/server/am/ActivityStack;
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    packed-switch v0, :pswitch_data_0

    .line 267
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    :goto_0
    return-object v0

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    goto :goto_0

    .line 260
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method getNextTaskId()I
    .locals 1

    .prologue
    .line 331
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 332
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    if-gtz v0, :cond_1

    .line 333
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    .line 335
    :cond_1
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-nez v0, :cond_0

    .line 336
    iget v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurTaskId:I

    return v0
.end method

.method getStack(I)Lcom/android/server/am/ActivityStack;
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 2081
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2082
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    .line 2083
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 2087
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :goto_1
    return-object v0

    .line 2081
    .restart local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2087
    .end local v0    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getStacks()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2091
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getTasksLocked(ILandroid/app/IThumbnailReceiver;Lcom/android/server/am/PendingThumbnailsRecord;Ljava/util/List;)Lcom/android/server/am/ActivityRecord;
    .locals 15
    .param p1, "maxNum"    # I
    .param p2, "receiver"    # Landroid/app/IThumbnailReceiver;
    .param p3, "pending"    # Lcom/android/server/am/PendingThumbnailsRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/IThumbnailReceiver;",
            "Lcom/android/server/am/PendingThumbnailsRecord;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;)",
            "Lcom/android/server/am/ActivityRecord;"
        }
    .end annotation

    .prologue
    .line 547
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v8, 0x0

    .line 550
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v14, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 551
    .local v7, "numStacks":I
    new-array v9, v7, [Ljava/util/ArrayList;

    .line 552
    .local v9, "runningTaskLists":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    add-int/lit8 v12, v7, -0x1

    .local v12, "stackNdx":I
    :goto_0
    if-ltz v12, :cond_2

    .line 553
    iget-object v14, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityStack;

    .line 554
    .local v11, "stack":Lcom/android/server/am/ActivityStack;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v13, "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    aput-object v13, v9, v12

    .line 556
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1, v13}, Lcom/android/server/am/ActivityStack;->getTasksLocked(Landroid/app/IThumbnailReceiver;Lcom/android/server/am/PendingThumbnailsRecord;Ljava/util/List;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    .line 557
    .local v2, "ar":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v11}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 558
    move-object v8, v2

    .line 552
    :cond_0
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 577
    .end local v2    # "ar":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .local v5, "mostRecentActiveTime":J
    .local v10, "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    if-eqz v10, :cond_4

    .line 578
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    add-int/lit8 p1, p1, -0x1

    .line 564
    .end local v5    # "mostRecentActiveTime":J
    .end local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    if-lez p1, :cond_4

    .line 565
    const-wide/high16 v5, -0x8000000000000000L

    .line 566
    .restart local v5    # "mostRecentActiveTime":J
    const/4 v10, 0x0

    .line 567
    .restart local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v12, 0x0

    :goto_1
    if-ge v12, v7, :cond_1

    .line 568
    aget-object v13, v9, v12

    .line 569
    .restart local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_3

    .line 570
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-wide v3, v14, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 571
    .local v3, "lastActiveTime":J
    cmp-long v14, v3, v5

    if-lez v14, :cond_3

    .line 572
    move-wide v5, v3

    .line 573
    move-object v10, v13

    .line 567
    .end local v3    # "lastActiveTime":J
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 585
    .end local v5    # "mostRecentActiveTime":J
    .end local v10    # "selectedStackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v13    # "stackTaskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_4
    return-object v8
.end method

.method goingToSleepLocked()V
    .locals 2

    .prologue
    .line 2151
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleSleepTimeout()V

    .line 2152
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2153
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2154
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2158
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2159
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2162
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2163
    return-void
.end method

.method handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2279
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2280
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2281
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2282
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStack;->handleAppCrashLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2280
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2284
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-void
.end method

.method handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 1974
    const/4 v0, 0x0

    .line 1975
    .local v0, "hasVisibleActivities":Z
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1976
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 1975
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1978
    :cond_0
    return v0
.end method

.method isFrontStack(Lcom/android/server/am/ActivityStack;)Z
    .locals 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    .line 272
    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "stackNdx":I
    :goto_0
    if-ltz v1, :cond_1

    .line 321
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 322
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 326
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v0

    .line 320
    .restart local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 326
    .end local v0    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method moveHomeStack(Z)V
    .locals 2
    .param p1, "toFront"    # Z

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v0

    .line 277
    .local v0, "homeInFront":Z
    xor-int v1, v0, p1

    if-eqz v1, :cond_0

    .line 281
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    .line 283
    :cond_0
    return-void

    .line 281
    :cond_1
    const/4 v1, 0x3

    goto :goto_0
.end method

.method moveHomeToTop()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->moveHomeTaskToTop()V

    .line 288
    return-void
.end method

.method moveTaskToStack(IIZ)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "stackId"    # I
    .param p3, "toTop"    # Z

    .prologue
    .line 2108
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v1

    .line 2109
    .local v1, "task":Lcom/android/server/am/TaskRecord;
    if-nez v1, :cond_0

    .line 2121
    :goto_0
    return-void

    .line 2112
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 2113
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v0, :cond_1

    .line 2114
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveTaskToStack: no stack for id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2117
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->removeTask(Lcom/android/server/am/TaskRecord;)V

    .line 2118
    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/ActivityStack;->addTask(Lcom/android/server/am/TaskRecord;Z)V

    .line 2119
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->addTask(IIZ)V

    .line 2120
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    goto :goto_0
.end method

.method pauseBackStacks(Z)Z
    .locals 4
    .param p1, "userLeaving"    # Z

    .prologue
    .line 466
    const/4 v0, 0x0

    .line 467
    .local v0, "someActivityPaused":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_1

    .line 468
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 469
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    .line 472
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 473
    const/4 v0, 0x1

    .line 467
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 476
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_1
    return v0
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 8
    .param p1, "remove"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 2334
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2335
    .local v0, "N":I
    if-gtz v0, :cond_1

    const/4 v4, 0x0

    .line 2370
    :cond_0
    return-object v4

    .line 2337
    :cond_1
    const/4 v4, 0x0

    .line 2339
    .local v4, "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesVisible()Z

    move-result v2

    .line 2340
    .local v2, "nowVisible":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2341
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2345
    .local v3, "s":Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    .line 2346
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2347
    iput-boolean v7, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 2348
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_2

    .line 2355
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2358
    :cond_2
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    if-eqz p1, :cond_5

    .line 2360
    if-nez v4, :cond_4

    .line 2361
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2363
    .restart local v4    # "stops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_4
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2364
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2365
    add-int/lit8 v0, v0, -0x1

    .line 2366
    add-int/lit8 v1, v1, -0x1

    .line 2340
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    .locals 23
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "andResume"    # Z
    .param p4, "checkConfig"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 893
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 898
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->startLaunchTickingLocked()V

    .line 906
    if-eqz p4, :cond_0

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v18

    .line 910
    .local v18, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 913
    .end local v18    # "config":Landroid/content/res/Configuration;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 914
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 915
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/server/am/ActivityRecord;->launchCount:I

    .line 916
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/android/server/am/ActivityRecord;->lastLaunchTime:J

    .line 920
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v20

    .line 921
    .local v20, "idx":I
    if-gez v20, :cond_1

    .line 922
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 924
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 927
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v2, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v22, v0

    .line 929
    .local v22, "stack":Lcom/android/server/am/ActivityStack;
    :try_start_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v2, :cond_3

    .line 930
    new-instance v2, Landroid/os/RemoteException;

    invoke-direct {v2}, Landroid/os/RemoteException;-><init>()V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1010
    :catch_0
    move-exception v19

    .line 1011
    .local v19, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    if-eqz v2, :cond_f

    .line 1014
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Second failure launching "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", giving up"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 1018
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "2nd-crash"

    const/4 v7, 0x0

    move-object/from16 v2, v22

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 1020
    const/4 v2, 0x0

    .line 1058
    .end local v19    # "e":Landroid/os/RemoteException;
    :goto_1
    return v2

    .line 907
    .end local v20    # "idx":I
    .end local v22    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 932
    .restart local v20    # "idx":I
    .restart local v22    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    const/4 v11, 0x0

    .line 933
    .local v11, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v12, 0x0

    .line 934
    .local v12, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_4

    .line 935
    :try_start_1
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 936
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 942
    :cond_4
    if-eqz p3, :cond_5

    .line 943
    const/16 v2, 0x7536

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 947
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->isNotResolverActivity()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 949
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v2, v3, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 951
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 952
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->sleeping:Z

    .line 953
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->forceNewConfig:Z

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->showAskCompatModeDialogLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 956
    const/4 v15, 0x0

    .line 957
    .local v15, "profileFile":Ljava/lang/String;
    const/16 v16, 0x0

    .line 958
    .local v16, "profileFd":Landroid/os/ParcelFileDescriptor;
    const/16 v17, 0x0

    .line 959
    .local v17, "profileAutoStop":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileApp:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 960
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_8

    .line 961
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileProc:Lcom/android/server/am/ProcessRecord;

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFile:Ljava/lang/String;

    .line 963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mProfileFd:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v16, v0

    .line 964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v2, Lcom/android/server/am/ActivityManagerService;->mAutoStopProfiler:Z

    move/from16 v17, v0

    .line 967
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    .line 968
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->pendingUiClean:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 969
    if-eqz v16, :cond_9

    .line 971
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v16

    .line 982
    :cond_9
    :goto_2
    const/4 v2, 0x2

    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessRecord;->forceProcessStateUpTo(I)V

    .line 983
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    new-instance v7, Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {v7, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, p2

    iget v9, v0, Lcom/android/server/am/ProcessRecord;->repProcState:I

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    if-nez p3, :cond_e

    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v14}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v14

    invoke-interface/range {v2 .. v17}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;ILandroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 990
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_b

    .line 995
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p2

    if-eq v2, v0, :cond_a

    .line 998
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting new heavy weight process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when already running "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p2

    iput-object v0, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 1003
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 1005
    .local v21, "msg":Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1029
    .end local v21    # "msg":Landroid/os/Message;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 1030
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1031
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " being launched, but already in LRU list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_c
    if-eqz p3, :cond_10

    .line 1038
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->minimalResumeActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1054
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1055
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 1058
    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 972
    :catch_1
    move-exception v19

    .line 973
    .local v19, "e":Ljava/io/IOException;
    if-eqz v16, :cond_9

    .line 975
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 978
    :goto_5
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 983
    .end local v19    # "e":Ljava/io/IOException;
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1025
    .end local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v15    # "profileFile":Ljava/lang/String;
    .end local v16    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v17    # "profileAutoStop":Z
    .local v19, "e":Landroid/os/RemoteException;
    :cond_f
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1026
    throw v19

    .line 1046
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v11    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v12    # "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v15    # "profileFile":Ljava/lang/String;
    .restart local v16    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .restart local v17    # "profileAutoStop":Z
    :cond_10
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1047
    const/4 v2, 0x1

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_4

    .line 976
    .local v19, "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    goto :goto_5
.end method

.method removeSleepTimeouts()V
    .locals 2

    .prologue
    .line 2606
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 2607
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(I)V

    .line 2608
    return-void
.end method

.method removeTask(Lcom/android/server/am/TaskRecord;)V
    .locals 7
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x0

    .line 340
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->removeTask(I)V

    .line 341
    iget-object v2, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 342
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    iget-object v1, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 343
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v5, p1, :cond_0

    .line 344
    iput-object v4, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 346
    :cond_0
    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityStack;->removeTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v5

    if-nez v5, :cond_2

    .line 348
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 349
    iget v3, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 350
    .local v3, "stackId":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowManagerService;->removeStack(I)I

    move-result v0

    .line 352
    .local v0, "nextStackId":I
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget v5, v5, Lcom/android/server/am/ActivityStack;->mStackId:I

    if-ne v5, v3, :cond_2

    .line 354
    :cond_1
    if-nez v0, :cond_3

    :goto_0
    iput-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 357
    .end local v0    # "nextStackId":I
    .end local v3    # "stackId":I
    :cond_2
    return-void

    .line 354
    .restart local v0    # "nextStackId":I
    .restart local v3    # "stackId":I
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v4

    goto :goto_0
.end method

.method removeTimeoutsForActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2599
    return-void
.end method

.method removeUserLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1991
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 5
    .param p1, "timeout"    # Z
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "thisTime"    # J
    .param p5, "totalTime"    # J

    .prologue
    .line 514
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 515
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 516
    .local v1, "w":Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 517
    if-eqz p2, :cond_0

    .line 518
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 520
    :cond_0
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 521
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 514
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 523
    .end local v1    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 524
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 499
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 500
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 501
    .local v1, "w":Landroid/app/IActivityManager$WaitResult;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 502
    if-eqz p1, :cond_0

    .line 503
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 505
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 506
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 499
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 508
    .end local v1    # "w":Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 509
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->dismissKeyguard()V

    .line 510
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2266
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v3, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 2267
    .local v0, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2268
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V

    .line 2270
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->allResumedActivitiesComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2271
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2272
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2275
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "startFlags"    # I
    .param p4, "profileFile"    # Ljava/lang/String;
    .param p5, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p6, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 592
    const/4 v8, 0x0

    .line 594
    .local v8, "rInfo":Landroid/content/pm/ResolveInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const v1, 0x110400

    invoke-interface {v0, p1, p2, v1, p6}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 599
    if-eqz v8, :cond_4

    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .local v6, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_0
    if-eqz v6, :cond_3

    .line 609
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 616
    if-eqz v8, :cond_0

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->targetComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    .line 618
    const-string v0, "android.intent.extra.changed_component_name_list"

    iget-object v1, v8, Landroid/content/pm/ResolveInfo;->targetComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 623
    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 629
    :cond_1
    and-int/lit8 v0, p3, 0x4

    if-eqz v0, :cond_2

    .line 630
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 631
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->setOpenGlTraceApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 635
    :cond_2
    if-eqz p4, :cond_3

    .line 636
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 637
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    and-int/lit8 v4, p3, 0x8

    if-eqz v4, :cond_5

    :goto_1
    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V

    .line 643
    :cond_3
    return-object v6

    .line 599
    .end local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    .line 600
    :catch_0
    move-exception v7

    .line 601
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v6, 0x0

    .restart local v6    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_0

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_5
    move v5, v3

    .line 637
    goto :goto_1
.end method

.method resumeHomeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p1, "prev"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v3, 0x0

    .line 291
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeToTop()V

    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 296
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->isHomeActivity()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 298
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v1, p1, v3}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v1

    .line 300
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked(I)Z

    move-result v1

    goto :goto_0
.end method

.method resumeTopActivitiesLocked()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2040
    invoke-virtual {p0, v0, v0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "targetStack"    # Lcom/android/server/am/ActivityStack;
    .param p2, "target"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "targetOptions"    # Landroid/os/Bundle;

    .prologue
    .line 2045
    if-nez p1, :cond_0

    .line 2046
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object p1

    .line 2048
    :cond_0
    const/4 v0, 0x0

    .line 2049
    .local v0, "result":Z
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_3

    .line 2050
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2051
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2052
    if-ne v1, p1, :cond_2

    .line 2053
    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    move-result v0

    .line 2049
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2055
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto :goto_1

    .line 2059
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_3
    return v0
.end method

.method resumedAppLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 360
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    .line 361
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 371
    :cond_0
    :goto_0
    return-object v0

    .line 364
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 365
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    .line 366
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 367
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-nez v3, :cond_0

    .line 368
    :cond_3
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0
.end method

.method scheduleDestroyAllActivities(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2306
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2307
    .local v0, "numStacks":I
    const/4 v2, 0x0

    .local v2, "stackNdx":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2308
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2309
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/am/ActivityStack;->scheduleDestroyActivities(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V

    .line 2307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2311
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    return-void
.end method

.method final scheduleIdleLocked()V
    .locals 2

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2594
    return-void
.end method

.method scheduleIdleTimeoutLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .param p1, "next"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2588
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2589
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2590
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .locals 2

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2603
    return-void
.end method

.method final scheduleSleepTimeout()V
    .locals 4

    .prologue
    .line 2611
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->removeSleepTimeouts()V

    .line 2612
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v1, 0x67

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2613
    return-void
.end method

.method setDismissKeyguard(Z)V
    .locals 0
    .param p1, "dismiss"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mDismissKeyguardOnNextActivity:Z

    .line 306
    return-void
.end method

.method setFocusedStack(Lcom/android/server/am/ActivityRecord;)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1334
    if-nez p1, :cond_1

    .line 1359
    :cond_0
    :goto_0
    return-void

    .line 1337
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isApplicationActivity()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1338
    :cond_2
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    if-eqz v1, :cond_0

    .line 1343
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_0

    .line 1349
    :cond_3
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1350
    .local v0, "taskStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .end local v0    # "taskStack":Lcom/android/server/am/ActivityStack;
    :cond_4
    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    .line 1351
    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1356
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStackState:I

    goto :goto_0
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 232
    new-instance v0, Lcom/android/server/am/ActivityStack;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mLooper:Landroid/os/Looper;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Looper;I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 233
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method shutdownLocked(I)Z
    .locals 11
    .param p1, "timeout"    # I

    .prologue
    .line 2166
    const/4 v6, 0x0

    .line 2167
    .local v6, "timedout":Z
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->goingToSleepLocked()V

    .line 2169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    int-to-long v9, p1

    add-long v1, v7, v9

    .line 2171
    .local v1, "endTime":J
    :goto_0
    const/4 v0, 0x0

    .line 2172
    .local v0, "cantShutdown":Z
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 2173
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->checkReadyForSleepLocked()Z

    move-result v7

    or-int/2addr v0, v7

    .line 2172
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2175
    :cond_0
    if-eqz v0, :cond_2

    .line 2176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v4, v1, v7

    .line 2177
    .local v4, "timeRemaining":J
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_1

    .line 2179
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2180
    :catch_0
    move-exception v7

    goto :goto_0

    .line 2183
    :cond_1
    const-string v7, "ActivityManager"

    const-string v8, "Activity manager shutdown timed out"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    const/4 v6, 0x1

    .line 2193
    .end local v4    # "timeRemaining":J
    :cond_2
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 2194
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 2196
    return v6
.end method

.method final startActivities(Landroid/app/IApplicationThread;ILjava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 24
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intents"    # [Landroid/content/Intent;
    .param p5, "resolvedTypes"    # [Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "userId"    # I

    .prologue
    .line 813
    if-nez p4, :cond_0

    .line 814
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "intents is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_0
    if-nez p5, :cond_1

    .line 817
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v3, "resolvedTypes is null"

    invoke-direct {v1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 819
    :cond_1
    move-object/from16 v0, p4

    array-length v1, v0

    move-object/from16 v0, p5

    array-length v3, v0

    if-eq v1, v3, :cond_2

    .line 820
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "intents are length different than resolvedTypes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 825
    :cond_2
    if-ltz p2, :cond_3

    .line 826
    const/4 v11, -0x1

    .line 833
    .local v11, "callingPid":I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 835
    .local v20, "origId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 836
    const/4 v1, 0x1

    :try_start_1
    new-array v0, v1, [Lcom/android/server/am/ActivityRecord;

    move-object/from16 v17, v0

    .line 837
    .local v17, "outActivity":[Lcom/android/server/am/ActivityRecord;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move-object/from16 v0, p4

    array-length v1, v0

    move/from16 v0, v18

    if-ge v0, v1, :cond_c

    .line 838
    aget-object v19, p4, v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 839
    .local v19, "intent":Landroid/content/Intent;
    if-nez v19, :cond_5

    move-object/from16 v2, v19

    .line 837
    .end local v19    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 827
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v11    # "callingPid":I
    .end local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v18    # "i":I
    .end local v20    # "origId":J
    :cond_3
    if-nez p1, :cond_4

    .line 828
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    .line 829
    .restart local v11    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_0

    .line 831
    .end local v11    # "callingPid":I
    :cond_4
    const/16 p2, -0x1

    move/from16 v11, p2

    .restart local v11    # "callingPid":I
    goto :goto_0

    .line 844
    .restart local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "i":I
    .restart local v19    # "intent":Landroid/content/Intent;
    .restart local v20    # "origId":J
    :cond_5
    if-eqz v19, :cond_6

    :try_start_2
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 845
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 881
    .end local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .end local v18    # "i":I
    .end local v19    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 883
    :catchall_1
    move-exception v1

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 848
    .restart local v17    # "outActivity":[Lcom/android/server/am/ActivityRecord;
    .restart local v18    # "i":I
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_6
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7

    const/16 v16, 0x1

    .line 851
    .local v16, "componentSpecified":Z
    :goto_3
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 854
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    aget-object v3, p5, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 857
    .local v7, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p8

    invoke-virtual {v1, v7, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 859
    if-eqz v7, :cond_8

    iget-object v1, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_8

    .line 862
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "FLAG_CANT_SAVE_STATE not supported here"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 848
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "componentSpecified":Z
    .restart local v19    # "intent":Landroid/content/Intent;
    :cond_7
    const/16 v16, 0x0

    goto :goto_3

    .line 867
    .end local v19    # "intent":Landroid/content/Intent;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "componentSpecified":Z
    :cond_8
    if-eqz p7, :cond_9

    move-object/from16 v0, p4

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_9

    .line 868
    move-object/from16 v15, p7

    .line 872
    .local v15, "theseOptions":Landroid/os/Bundle;
    :goto_4
    aget-object v6, p5, v18

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v14, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v2

    move-object/from16 v8, p6

    move/from16 v12, p2

    move-object/from16 v13, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v22

    .line 875
    .local v22, "res":I
    if-gez v22, :cond_a

    .line 876
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 883
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "theseOptions":Landroid/os/Bundle;
    .end local v16    # "componentSpecified":Z
    .end local v22    # "res":I
    :goto_5
    return v22

    .line 870
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "componentSpecified":Z
    :cond_9
    const/4 v15, 0x0

    .restart local v15    # "theseOptions":Landroid/os/Bundle;
    goto :goto_4

    .line 879
    .restart local v22    # "res":I
    :cond_a
    const/4 v1, 0x0

    :try_start_5
    aget-object v1, v17, v1

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    aget-object v1, v17, v1

    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 p6, v0

    :goto_6
    goto/16 :goto_2

    :cond_b
    const/16 p6, 0x0

    goto :goto_6

    .line 881
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v15    # "theseOptions":Landroid/os/Bundle;
    .end local v16    # "componentSpecified":Z
    .end local v22    # "res":I
    :cond_c
    monitor-exit v23
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 883
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 886
    const/16 v22, 0x0

    goto :goto_5
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I
    .locals 34
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p5, "resultTo"    # Landroid/os/IBinder;
    .param p6, "resultWho"    # Ljava/lang/String;
    .param p7, "requestCode"    # I
    .param p8, "callingPid"    # I
    .param p9, "callingUid"    # I
    .param p10, "callingPackage"    # Ljava/lang/String;
    .param p11, "startFlags"    # I
    .param p12, "options"    # Landroid/os/Bundle;
    .param p13, "componentSpecified"    # Z
    .param p14, "outActivity"    # [Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1099
    const/16 v25, 0x0

    .line 1101
    .local v25, "err":I
    const/16 v22, 0x0

    .line 1102
    .local v22, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 1103
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v22

    .line 1104
    if-eqz v22, :cond_3

    .line 1105
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p8, v0

    .line 1106
    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p9, v0

    .line 1115
    :cond_0
    :goto_0
    if-nez v25, :cond_1

    .line 1116
    if-eqz p4, :cond_4

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v32

    .line 1117
    .local v32, "userId":I
    :goto_1
    const-string v8, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START u"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, " {"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "} from pid "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v22, :cond_5

    move-object/from16 v0, v22

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    :goto_2
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    .end local v32    # "userId":I
    :cond_1
    const/16 v29, 0x0

    .line 1122
    .local v29, "sourceRecord":Lcom/android/server/am/ActivityRecord;
    const/4 v6, 0x0

    .line 1123
    .local v6, "resultRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz p5, :cond_2

    .line 1124
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isInAnyStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v29

    .line 1127
    if-eqz v29, :cond_2

    .line 1128
    if-ltz p7, :cond_2

    move-object/from16 v0, v29

    iget-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_2

    .line 1129
    move-object/from16 v6, v29

    .line 1133
    :cond_2
    if-nez v6, :cond_6

    const/4 v4, 0x0

    .line 1135
    .local v4, "resultStack":Lcom/android/server/am/ActivityStack;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v26

    .line 1137
    .local v26, "launchFlags":I
    const/high16 v5, 0x2000000

    and-int v5, v5, v26

    if-eqz v5, :cond_9

    if-eqz v29, :cond_9

    .line 1141
    if-ltz p7, :cond_7

    .line 1142
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1143
    const/4 v5, -0x3

    .line 1287
    :goto_4
    return v5

    .line 1108
    .end local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    .end local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .end local v26    # "launchFlags":I
    .end local v29    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_3
    const-string v5, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find app for caller "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " (pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") when starting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/16 v25, -0x4

    goto/16 :goto_0

    .line 1116
    :cond_4
    const/16 v32, 0x0

    goto/16 :goto_1

    .restart local v32    # "userId":I
    :cond_5
    move/from16 v5, p8

    .line 1117
    goto :goto_2

    .line 1133
    .end local v32    # "userId":I
    .restart local v6    # "resultRecord":Lcom/android/server/am/ActivityRecord;
    .restart local v29    # "sourceRecord":Lcom/android/server/am/ActivityRecord;
    :cond_6
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    goto :goto_3

    .line 1145
    .restart local v4    # "resultStack":Lcom/android/server/am/ActivityStack;
    .restart local v26    # "launchFlags":I
    :cond_7
    move-object/from16 v0, v29

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1146
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p6, v0

    .line 1147
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p7, v0

    .line 1148
    const/4 v5, 0x0

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1149
    if-eqz v6, :cond_8

    .line 1150
    move-object/from16 v0, v29

    move-object/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v6, v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1153
    :cond_8
    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p9

    if-ne v5, v0, :cond_9

    .line 1164
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 p10, v0

    .line 1168
    :cond_9
    if-nez v25, :cond_a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_a

    .line 1171
    const/16 v25, -0x1

    .line 1174
    :cond_a
    if-nez v25, :cond_b

    if-nez p4, :cond_b

    .line 1177
    const/16 v25, -0x2

    .line 1180
    :cond_b
    if-eqz v25, :cond_d

    .line 1181
    if-eqz v6, :cond_c

    .line 1182
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1186
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1187
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    move/from16 v5, v25

    .line 1188
    goto/16 :goto_4

    .line 1191
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "android.permission.START_ANY_ACTIVITY"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v31

    .line 1193
    .local v31, "startAnyPerm":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p4

    iget-boolean v12, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v23

    .line 1195
    .local v23, "componentPerm":I
    if-eqz v31, :cond_10

    if-eqz v23, :cond_10

    .line 1196
    if-eqz v6, :cond_e

    .line 1197
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1201
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1203
    move-object/from16 v0, p4

    iget-boolean v5, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v5, :cond_f

    .line 1204
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " not exported from uid "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1214
    .local v27, "msg":Ljava/lang/String;
    :goto_5
    const-string v5, "ActivityManager"

    move-object/from16 v0, v27

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    new-instance v5, Ljava/lang/SecurityException;

    move-object/from16 v0, v27

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1209
    .end local v27    # "msg":Ljava/lang/String;
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " from "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (pid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", uid="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " requires "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .restart local v27    # "msg":Ljava/lang/String;
    goto :goto_5

    .line 1218
    .end local v27    # "msg":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v5, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p4

    iget-object v12, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v8, p2

    move/from16 v9, p9

    move/from16 v10, p8

    move-object/from16 v11, p3

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-nez v5, :cond_13

    const/16 v21, 0x1

    .line 1221
    .local v21, "abort":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_11

    .line 1225
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v33

    .line 1226
    .local v33, "watchIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-interface {v5, v0, v8}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_14

    const/4 v5, 0x1

    :goto_7
    or-int v21, v21, v5

    .line 1233
    .end local v33    # "watchIntent":Landroid/content/Intent;
    :cond_11
    :goto_8
    if-eqz v21, :cond_15

    .line 1234
    if-eqz v6, :cond_12

    .line 1235
    const/4 v5, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1240
    :cond_12
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1241
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1242
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 1218
    .end local v21    # "abort":Z
    :cond_13
    const/16 v21, 0x0

    goto :goto_6

    .line 1226
    .restart local v21    # "abort":Z
    .restart local v33    # "watchIntent":Landroid/content/Intent;
    :cond_14
    const/4 v5, 0x0

    goto :goto_7

    .line 1228
    .end local v33    # "watchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v24

    .line 1229
    .local v24, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_8

    .line 1245
    .end local v24    # "e":Landroid/os/RemoteException;
    :cond_15
    new-instance v7, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v9, v22

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v16, v6

    move-object/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p13

    move-object/from16 v20, p0

    invoke-direct/range {v7 .. v20}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZLcom/android/server/am/ActivityStackSupervisor;)V

    .line 1248
    .local v7, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz p14, :cond_16

    .line 1249
    const/4 v5, 0x0

    aput-object v7, p14, v5

    .line 1252
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v30

    .line 1253
    .local v30, "stack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_17

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p9

    if-eq v5, v0, :cond_18

    .line 1255
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "Activity start"

    move/from16 v0, p8

    move/from16 v1, p9

    invoke-virtual {v5, v0, v1, v8}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 1256
    new-instance v28, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, p11

    move-object/from16 v3, v30

    invoke-direct {v0, v7, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V

    .line 1258
    .local v28, "pal":Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityStackSupervisor;->setDismissKeyguard(Z)V

    .line 1260
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1261
    const/4 v5, 0x4

    goto/16 :goto_4

    .line 1265
    .end local v28    # "pal":Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v5, :cond_1a

    .line 1271
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v8, 0x0

    iput-wide v8, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 1276
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1278
    const/4 v12, 0x1

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, v29

    move/from16 v11, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I

    move-result v25

    .line 1280
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->allPausedActivitiesComplete()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->dismissKeyguard()V

    :cond_19
    move/from16 v5, v25

    .line 1287
    goto/16 :goto_4

    .line 1273
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_9
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 36
    .param p1, "caller"    # Landroid/app/IApplicationThread;
    .param p2, "callingUid"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "resultTo"    # Landroid/os/IBinder;
    .param p7, "resultWho"    # Ljava/lang/String;
    .param p8, "requestCode"    # I
    .param p9, "startFlags"    # I
    .param p10, "profileFile"    # Ljava/lang/String;
    .param p11, "profileFd"    # Landroid/os/ParcelFileDescriptor;
    .param p12, "outResult"    # Landroid/app/IActivityManager$WaitResult;
    .param p13, "config"    # Landroid/content/res/Configuration;
    .param p14, "options"    # Landroid/os/Bundle;
    .param p15, "userId"    # I

    .prologue
    .line 658
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 659
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "File descriptors passed in Intent"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 661
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8

    const/16 v21, 0x1

    .line 664
    .local v21, "componentSpecified":Z
    :goto_0
    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .end local p4    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    move-object/from16 v2, p0

    move-object/from16 v4, p5

    move/from16 v5, p9

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    move/from16 v8, p15

    .line 667
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v23

    .line 670
    .local v23, "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    move-object/from16 v4, v23

    invoke-static {v2, v4, v3}, Lcom/android/server/am/ExtraActivityManagerService;->checkAccessControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 p4, v3

    move-object/from16 v5, p4

    move-object/from16 v6, p0

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move/from16 v9, p15

    invoke-static/range {v4 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)Landroid/content/pm/ActivityInfo;

    move-result-object v23

    move-object/from16 v4, v23

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityStackSupervisor;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_miui_0

    iget-object v2, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_miui_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    invoke-static {v5, v2, v6}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v2

    if-nez v2, :cond_miui_1

    const/16 v32, 0x5

    return v32

    :cond_miui_0
    const/4 v2, 0x0

    goto :goto_miui_0

    :cond_miui_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v35, v0

    monitor-enter v35

    .line 672
    if-ltz p2, :cond_9

    .line 673
    const/16 v16, -0x1

    .line 681
    .local v16, "callingPid":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v33

    .line 682
    .local v33, "stack":Lcom/android/server/am/ActivityStack;
    if-eqz p13, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 689
    .local v28, "origId":J
    if-eqz v23, :cond_11

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x10000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_11

    .line 693
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 697
    :cond_1
    move/from16 v7, p2

    .line 698
    .local v7, "realCallingUid":I
    if-eqz p1, :cond_2

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v24

    .line 700
    .local v24, "callerApp":Lcom/android/server/am/ProcessRecord;
    if-eqz v24, :cond_c

    .line 701
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 711
    .end local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x1

    new-array v12, v2, [Landroid/content/Intent;

    const/4 v2, 0x0

    aput-object v3, v12, v2

    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p5, v13, v2

    const/high16 v14, 0x50000000

    const/4 v15, 0x0

    move/from16 v8, p15

    invoke-virtual/range {v4 .. v15}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;

    move-result-object v34

    .line 717
    .local v34, "target":Landroid/content/IIntentSender;
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 718
    .local v27, "newIntent":Landroid/content/Intent;
    if-ltz p8, :cond_3

    .line 720
    const-string v2, "has_result"

    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 722
    :cond_3
    const-string v2, "intent"

    new-instance v4, Landroid/content/IntentSender;

    move-object/from16 v0, v34

    invoke-direct {v4, v0}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/am/ActivityRecord;

    .line 726
    .local v26, "hist":Lcom/android/server/am/ActivityRecord;
    const-string v2, "cur_app"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v2, "cur_task"

    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 731
    .end local v26    # "hist":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const-string v2, "new_app"

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 733
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 734
    const-string v2, "android"

    const-class v4, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 736
    move-object/from16 p4, v27

    .line 737
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    const/16 p5, 0x0

    .line 738
    const/16 p1, 0x0

    .line 739
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    .line 740
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v16

    .line 741
    const/16 v21, 0x1

    .line 743
    :try_start_2
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v4, 0x0

    const v5, 0x10400

    move-object/from16 v0, p4

    move/from16 v1, p15

    invoke-interface {v2, v0, v4, v5, v1}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v31

    .line 748
    .local v31, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v31, :cond_d

    move-object/from16 v0, v31

    iget-object v12, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 749
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v12, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, p15

    invoke-virtual {v2, v12, v0}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    .line 757
    .end local v7    # "realCallingUid":I
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "target":Landroid/content/IIntentSender;
    :goto_4
    const/16 v22, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move/from16 v15, p8

    move/from16 v17, p2

    move-object/from16 v18, p3

    move/from16 v19, p9

    move-object/from16 v20, p14

    :try_start_4
    invoke-virtual/range {v8 .. v22}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    move-result v32

    .line 761
    .local v32, "res":I
    move-object/from16 v0, v33

    iget-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v2, :cond_5

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v4, "android.permission.CHANGE_CONFIGURATION"

    const-string v5, "updateConfiguration()"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const/4 v2, 0x0

    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p13

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;ZZ)Z

    .line 774
    :cond_5
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 776
    if-eqz p12, :cond_7

    .line 777
    move/from16 v0, v32

    move-object/from16 v1, p12

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 778
    if-nez v32, :cond_e

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 782
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 785
    :goto_5
    :try_start_6
    move-object/from16 v0, p12

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    .line 806
    :cond_7
    :goto_6
    monitor-exit v35
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v32    # "res":I
    :goto_7
    return v32

    .line 661
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "callingPid":I
    .end local v21    # "componentSpecified":Z
    .end local v28    # "origId":J
    .end local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_8
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 674
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v21    # "componentSpecified":Z
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_9
    if-nez p1, :cond_a

    .line 675
    :try_start_7
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v16

    .line 676
    .restart local v16    # "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto/16 :goto_1

    .line 678
    .end local v16    # "callingPid":I
    :cond_a
    const/16 p2, -0x1

    move/from16 v16, p2

    .restart local v16    # "callingPid":I
    goto/16 :goto_1

    .line 682
    .restart local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 703
    .restart local v7    # "realCallingUid":I
    .restart local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v28    # "origId":J
    :cond_c
    const-string v2, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to find app for caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when starting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    invoke-static/range {p14 .. p14}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 707
    const/16 v32, -0x4

    monitor-exit v35
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_7

    .line 748
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v24    # "callerApp":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :cond_d
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 750
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v25

    move-object/from16 v12, v23

    .line 751
    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v25, "e":Landroid/os/RemoteException;
    :goto_8
    const/4 v12, 0x0

    goto/16 :goto_4

    .line 786
    .end local v7    # "realCallingUid":I
    .end local v25    # "e":Landroid/os/RemoteException;
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v34    # "target":Landroid/content/IIntentSender;
    .restart local v32    # "res":I
    :cond_e
    const/4 v2, 0x2

    move/from16 v0, v32

    if-ne v0, v2, :cond_7

    .line 787
    const/4 v2, 0x0

    :try_start_8
    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v30

    .line 788
    .local v30, "r":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v30

    iget-boolean v2, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_f

    .line 789
    const/4 v2, 0x0

    move-object/from16 v0, p12

    iput-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 790
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p12

    iput-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 791
    const-wide/16 v4, 0x0

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 792
    const-wide/16 v4, 0x0

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_6

    .line 807
    .end local v16    # "callingPid":I
    .end local v28    # "origId":J
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v32    # "res":I
    .end local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :catchall_0
    move-exception v2

    :goto_9
    monitor-exit v35
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    .line 794
    .restart local v16    # "callingPid":I
    .restart local v28    # "origId":J
    .restart local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v32    # "res":I
    .restart local v33    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_f
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p12

    iput-wide v4, v0, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object/from16 v0, p12

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 798
    :cond_10
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 801
    :goto_a
    :try_start_b
    move-object/from16 v0, p12

    iget-boolean v2, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    if-nez v2, :cond_7

    move-object/from16 v0, p12

    iget-object v2, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v2, :cond_10

    goto/16 :goto_6

    .line 807
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v16    # "callingPid":I
    .end local v28    # "origId":J
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v32    # "res":I
    .end local v33    # "stack":Lcom/android/server/am/ActivityStack;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :catchall_1
    move-exception v2

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_9

    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v7    # "realCallingUid":I
    .restart local v16    # "callingPid":I
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v28    # "origId":J
    .restart local v33    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :catchall_2
    move-exception v2

    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    goto :goto_9

    .line 799
    .end local v7    # "realCallingUid":I
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v34    # "target":Landroid/content/IIntentSender;
    .restart local v30    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v32    # "res":I
    :catch_1
    move-exception v2

    goto :goto_a

    .line 783
    .end local v30    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_2
    move-exception v2

    goto/16 :goto_5

    .line 750
    .end local v32    # "res":I
    .restart local v7    # "realCallingUid":I
    .restart local v27    # "newIntent":Landroid/content/Intent;
    .restart local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .restart local v34    # "target":Landroid/content/IIntentSender;
    :catch_3
    move-exception v25

    goto :goto_8

    .end local v7    # "realCallingUid":I
    .end local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v27    # "newIntent":Landroid/content/Intent;
    .end local v31    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v34    # "target":Landroid/content/IIntentSender;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_11
    move-object/from16 v12, v23

    .end local v23    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "aInfo":Landroid/content/pm/ActivityInfo;
    move-object/from16 p4, v3

    .end local v3    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto/16 :goto_4
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;IZLandroid/os/Bundle;)I
    .locals 29
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "sourceRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "startFlags"    # I
    .param p4, "doResume"    # Z
    .param p5, "options"    # Landroid/os/Bundle;

    .prologue
    .line 1364
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1365
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v11, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    .line 1367
    .local v11, "callingUid":I
    invoke-virtual {v14}, Landroid/content/Intent;->getFlags()I

    move-result v17

    .line 1371
    .local v17, "launchFlags":I
    const/high16 v4, 0x40000

    and-int v4, v4, v17

    if-nez v4, :cond_10

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mUserLeaving:Z

    .line 1377
    if-nez p4, :cond_0

    .line 1378
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1381
    :cond_0
    const/high16 v4, 0x1000000

    and-int v4, v4, v17

    if-eqz v4, :cond_11

    move-object/from16 v21, p1

    .line 1387
    .local v21, "notTop":Lcom/android/server/am/ActivityRecord;
    :goto_1
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2

    .line 1388
    move-object/from16 v12, p2

    .line 1389
    .local v12, "checkedCaller":Lcom/android/server/am/ActivityRecord;
    if-nez v12, :cond_1

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v12

    .line 1392
    :cond_1
    iget-object v4, v12, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1394
    and-int/lit8 p3, p3, -0x2

    .line 1398
    .end local v12    # "checkedCaller":Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-nez p2, :cond_12

    .line 1401
    const/high16 v4, 0x10000000

    and-int v4, v4, v17

    if-nez v4, :cond_3

    .line 1402
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/high16 v4, 0x10000000

    or-int v17, v17, v4

    .line 1418
    :cond_3
    :goto_2
    const/16 v19, 0x0

    .line 1419
    .local v19, "newTaskInfo":Landroid/content/pm/ActivityInfo;
    const/16 v20, 0x0

    .line 1421
    .local v20, "newTaskIntent":Landroid/content/Intent;
    if-eqz p2, :cond_16

    .line 1422
    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_15

    .line 1428
    const/high16 v4, 0x10000000

    and-int v4, v4, v17

    if-nez v4, :cond_4

    .line 1429
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startActivity called from finishing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "; forcing "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    const/high16 v4, 0x10000000

    or-int v17, v17, v4

    .line 1432
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    .line 1433
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v20, v0

    .line 1435
    :cond_4
    const/16 p2, 0x0

    .line 1436
    const/16 v24, 0x0

    .line 1444
    .local v24, "sourceStack":Lcom/android/server/am/ActivityStack;
    :goto_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_5

    const/high16 v4, 0x10000000

    and-int v4, v4, v17

    if-eqz v4, :cond_5

    .line 1450
    const-string v4, "ActivityManager"

    const-string v6, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1454
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1457
    :cond_5
    const/4 v10, 0x0

    .line 1458
    .local v10, "addingToTask":Z
    const/16 v18, 0x0

    .line 1459
    .local v18, "movedHome":Z
    const/16 v23, 0x0

    .line 1461
    .local v23, "reuseTask":Lcom/android/server/am/TaskRecord;
    const/high16 v4, 0x10000000

    and-int v4, v4, v17

    if-eqz v4, :cond_6

    const/high16 v4, 0x8000000

    and-int v4, v4, v17

    if-eqz v4, :cond_7

    :cond_6
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_7

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_28

    .line 1468
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_28

    .line 1473
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_17

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->findTaskLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 1476
    .local v15, "intentActivity":Lcom/android/server/am/ActivityRecord;
    :goto_4
    if-eqz v15, :cond_28

    .line 1477
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_8

    .line 1478
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1480
    :cond_8
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1481
    .local v3, "targetStack":Lcom/android/server/am/ActivityStack;
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1484
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 1485
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v4, v4, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_9

    .line 1490
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v14, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1498
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getLastStack()Lcom/android/server/am/ActivityStack;

    move-result-object v16

    .line 1499
    .local v16, "lastStack":Lcom/android/server/am/ActivityStack;
    if-nez v16, :cond_18

    const/4 v13, 0x0

    .line 1501
    .local v13, "curTop":Lcom/android/server/am/ActivityRecord;
    :goto_5
    if-eqz v13, :cond_d

    iget-object v4, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_a

    iget-object v4, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    if-eq v4, v6, :cond_d

    .line 1503
    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v6, 0x400000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1504
    if-eqz p2, :cond_b

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_d

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v4, v6, :cond_d

    .line 1508
    :cond_b
    const/16 v18, 0x1

    .line 1509
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)V

    .line 1510
    const v4, 0x10004000

    and-int v4, v4, v17

    const v6, 0x10004000

    if-ne v4, v6, :cond_c

    .line 1514
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    .line 1516
    :cond_c
    const/16 p5, 0x0

    .line 1521
    :cond_d
    const/high16 v4, 0x200000

    and-int v4, v4, v17

    if-eqz v4, :cond_e

    .line 1522
    move-object/from16 v0, p1

    invoke-virtual {v3, v15, v0}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    .line 1524
    :cond_e
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_1a

    .line 1529
    if-eqz p4, :cond_19

    .line 1530
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 1534
    :goto_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_f

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    :cond_f
    const/4 v4, 0x1

    .line 1802
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "lastStack":Lcom/android/server/am/ActivityStack;
    .end local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .end local v20    # "newTaskIntent":Landroid/content/Intent;
    :goto_7
    return v4

    .line 1371
    .end local v10    # "addingToTask":Z
    .end local v18    # "movedHome":Z
    .end local v21    # "notTop":Lcom/android/server/am/ActivityRecord;
    .end local v23    # "reuseTask":Lcom/android/server/am/TaskRecord;
    .end local v24    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1381
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1406
    .restart local v21    # "notTop":Lcom/android/server/am/ActivityRecord;
    :cond_12
    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_13

    .line 1410
    const/high16 v4, 0x10000000

    or-int v17, v17, v4

    goto/16 :goto_2

    .line 1411
    :cond_13
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_14

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 1415
    :cond_14
    const/high16 v4, 0x10000000

    or-int v17, v17, v4

    goto/16 :goto_2

    .line 1438
    .restart local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "newTaskIntent":Landroid/content/Intent;
    :cond_15
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v24, v0

    .restart local v24    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_3

    .line 1441
    .end local v24    # "sourceStack":Lcom/android/server/am/ActivityStack;
    :cond_16
    const/16 v24, 0x0

    .restart local v24    # "sourceStack":Lcom/android/server/am/ActivityStack;
    goto/16 :goto_3

    .line 1473
    .restart local v10    # "addingToTask":Z
    .restart local v18    # "movedHome":Z
    .restart local v23    # "reuseTask":Lcom/android/server/am/TaskRecord;
    :cond_17
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v4}, Lcom/android/server/am/ActivityStackSupervisor;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v15

    goto/16 :goto_4

    .line 1499
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .restart local v15    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .restart local v16    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_18
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    goto/16 :goto_5

    .line 1532
    .restart local v13    # "curTop":Lcom/android/server/am/ActivityRecord;
    :cond_19
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto :goto_6

    .line 1539
    :cond_1a
    const v4, 0x10008000

    and-int v4, v4, v17

    const v6, 0x10008000

    if-ne v4, v6, :cond_1d

    .line 1545
    iget-object v0, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v23, v0

    .line 1546
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked()V

    .line 1547
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v6}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1620
    :cond_1b
    :goto_8
    if-nez v10, :cond_28

    if-nez v23, :cond_28

    .line 1624
    if-eqz p4, :cond_27

    .line 1625
    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v3, v4, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;Landroid/os/Bundle;)Z

    .line 1629
    :goto_9
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_1c

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1632
    :cond_1c
    const/4 v4, 0x2

    goto/16 :goto_7

    .line 1548
    :cond_1d
    const/high16 v4, 0x4000000

    and-int v4, v4, v17

    if-nez v4, :cond_1e

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1e

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_21

    .line 1555
    :cond_1e
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 1557
    .local v27, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v27, :cond_20

    .line 1558
    move-object/from16 v0, v27

    iget-boolean v4, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_1f

    .line 1563
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1565
    :cond_1f
    const/16 v4, 0x7533

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1567
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto :goto_8

    .line 1573
    :cond_20
    const/4 v10, 0x1

    .line 1577
    move-object/from16 p2, v15

    goto :goto_8

    .line 1579
    .end local v27    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_21
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 1586
    const/high16 v4, 0x20000000

    and-int v4, v4, v17

    if-nez v4, :cond_22

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_24

    :cond_22
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1589
    const/16 v4, 0x7533

    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1591
    iget-boolean v4, v15, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v4, :cond_23

    .line 1592
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1594
    :cond_23
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v15, v11, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto/16 :goto_8

    .line 1595
    :cond_24
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v6, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1599
    const/4 v10, 0x1

    .line 1600
    move-object/from16 p2, v15

    goto/16 :goto_8

    .line 1602
    :cond_25
    const/high16 v4, 0x200000

    and-int v4, v4, v17

    if-nez v4, :cond_26

    .line 1608
    const/4 v10, 0x1

    .line 1609
    move-object/from16 p2, v15

    goto/16 :goto_8

    .line 1610
    :cond_26
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-boolean v4, v4, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v4, :cond_1b

    .line 1618
    iget-object v4, v15, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v6, v8}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_8

    .line 1627
    :cond_27
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    goto/16 :goto_9

    .line 1644
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v13    # "curTop":Lcom/android/server/am/ActivityRecord;
    .end local v15    # "intentActivity":Lcom/android/server/am/ActivityRecord;
    .end local v16    # "lastStack":Lcom/android/server/am/ActivityStack;
    :cond_28
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_2e

    .line 1648
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v28

    .line 1649
    .local v28, "topStack":Lcom/android/server/am/ActivityStack;
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 1650
    .restart local v27    # "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v27, :cond_31

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_31

    .line 1651
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    if-ne v4, v6, :cond_31

    .line 1652
    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_31

    move-object/from16 v0, v27

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_31

    .line 1653
    const/high16 v4, 0x20000000

    and-int v4, v4, v17

    if-nez v4, :cond_29

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_29

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_31

    .line 1656
    :cond_29
    const/16 v4, 0x7533

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, v27

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1660
    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput-object v4, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1661
    if-eqz p4, :cond_2a

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 1664
    :cond_2a
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1665
    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_2c

    .line 1669
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_2b

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1672
    :cond_2b
    const/4 v4, 0x1

    goto/16 :goto_7

    .line 1674
    :cond_2c
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 1675
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_2d

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1678
    :cond_2d
    const/4 v4, 0x3

    goto/16 :goto_7

    .line 1685
    .end local v27    # "top":Lcom/android/server/am/ActivityRecord;
    .end local v28    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_2e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-eqz v4, :cond_2f

    .line 1686
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    const/4 v4, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1689
    :cond_2f
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1690
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_30

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1693
    :cond_30
    const/4 v4, -0x2

    goto/16 :goto_7

    .line 1696
    .restart local v27    # "top":Lcom/android/server/am/ActivityRecord;
    .restart local v28    # "topStack":Lcom/android/server/am/ActivityStack;
    :cond_31
    const/4 v5, 0x0

    .line 1697
    .local v5, "newTask":Z
    const/4 v7, 0x0

    .line 1700
    .local v7, "keepCurTransition":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    if-nez v4, :cond_37

    if-nez v10, :cond_37

    const/high16 v4, 0x10000000

    and-int v4, v4, v17

    if-eqz v4, :cond_37

    .line 1702
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1703
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 1704
    if-nez v23, :cond_36

    .line 1705
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v4

    if-eqz v19, :cond_34

    .end local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    :goto_a
    if-eqz v20, :cond_35

    .end local v20    # "newTaskIntent":Landroid/content/Intent;
    :goto_b
    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v3, v4, v0, v1, v6}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 1714
    :goto_c
    const/4 v5, 0x1

    .line 1715
    if-nez v18, :cond_32

    .line 1716
    const v4, 0x10004000

    and-int v4, v4, v17

    const v6, 0x10004000

    if-ne v4, v6, :cond_32

    .line 1721
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mOnTopOfHome:Z

    .line 1792
    :cond_32
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v8

    invoke-virtual {v4, v11, v6, v14, v8}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 1795
    if-eqz v5, :cond_33

    .line 1796
    const/16 v4, 0x7534

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    iget v9, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/4 v8, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-static {v4, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1798
    :cond_33
    const/16 v4, 0x7535

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1799
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v8, p5

    .line 1800
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZZLandroid/os/Bundle;)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1802
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1705
    .restart local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    .restart local v20    # "newTaskIntent":Landroid/content/Intent;
    :cond_34
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    goto :goto_a

    .end local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    :cond_35
    move-object/from16 v20, v14

    goto/16 :goto_b

    .line 1712
    .restart local v19    # "newTaskInfo":Landroid/content/pm/ActivityInfo;
    :cond_36
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto :goto_c

    .line 1724
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    :cond_37
    if-eqz p2, :cond_3d

    .line 1725
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v25, v0

    .line 1726
    .local v25, "sourceTask":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 1727
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 1728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v6

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 1729
    if-nez v10, :cond_3a

    const/high16 v4, 0x4000000

    and-int v4, v4, v17

    if-eqz v4, :cond_3a

    .line 1734
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 1735
    const/4 v7, 0x1

    .line 1736
    if-eqz v27, :cond_3c

    .line 1737
    const/16 v4, 0x7533

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    invoke-static {v4, v0, v6}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1738
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 1741
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1742
    if-eqz p4, :cond_38

    .line 1743
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1745
    :cond_38
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/os/Bundle;)V

    .line 1746
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-nez v4, :cond_39

    const-string v4, "ActivityManager"

    const-string v6, "startActivityUncheckedLocked: task left null"

    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "here"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v8

    invoke-static {v4, v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1749
    :cond_39
    const/4 v4, 0x3

    goto/16 :goto_7

    .line 1751
    :cond_3a
    if-nez v10, :cond_3c

    const/high16 v4, 0x20000

    and-int v4, v4, v17

    if-eqz v4, :cond_3c

    .line 1756
    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v27

    .line 1757
    if-eqz v27, :cond_3c

    .line 1758
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v26, v0

    .line 1759
    .local v26, "task":Lcom/android/server/am/TaskRecord;
    invoke-virtual/range {v26 .. v27}, Lcom/android/server/am/TaskRecord;->moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1760
    const/16 v4, 0x7533

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 1761
    move-object/from16 v0, v27

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/os/Bundle;)V

    .line 1762
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v0, v27

    invoke-virtual {v0, v11, v4}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 1763
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1764
    if-eqz p4, :cond_3b

    .line 1765
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1767
    :cond_3b
    const/4 v4, 0x3

    goto/16 :goto_7

    .line 1773
    .end local v26    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3c
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->thumbHolder:Lcom/android/server/am/ThumbnailHolder;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    goto/16 :goto_d

    .line 1781
    .end local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    .end local v25    # "sourceTask":Lcom/android/server/am/TaskRecord;
    :cond_3d
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStackSupervisor;->adjustStackFocus(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    .line 1782
    .restart local v3    # "targetStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 1783
    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v22

    .line 1784
    .local v22, "prev":Lcom/android/server/am/ActivityRecord;
    if-eqz v22, :cond_3e

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    :goto_e
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v6, v8}, Lcom/android/server/am/ActivityRecord;->setTask(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ThumbnailHolder;Z)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v6}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    goto/16 :goto_d

    .line 1784
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStackSupervisor;->getNextTaskId()I

    move-result v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v6, v14, v8}, Lcom/android/server/am/ActivityStack;->createTaskRecord(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/am/TaskRecord;

    move-result-object v4

    goto :goto_e
.end method

.method startHomeActivity(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeToTop()V

    .line 648
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIILjava/lang/String;ILandroid/os/Bundle;Z[Lcom/android/server/am/ActivityRecord;)I

    .line 650
    return-void
.end method

.method startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 12
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "andResume"    # Z
    .param p3, "checkConfig"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1064
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    .line 1067
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStack;->setLaunchTime(Lcom/android/server/am/ActivityRecord;)V

    .line 1069
    if-eqz v10, :cond_2

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_2

    .line 1071
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "android"

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1077
    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v10, v0, v1}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;Lcom/android/server/am/ProcessStatsService;)Z

    .line 1079
    :cond_1
    invoke-virtual {p0, p1, v10, p2, p3}, Lcom/android/server/am/ActivityStackSupervisor;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :goto_0
    return-void

    .line 1081
    :catch_0
    move-exception v11

    .line 1082
    .local v11, "e":Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1090
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const-string v5, "activity"

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    move v7, v4

    move v8, v4

    move v9, v3

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;ZZZ)Lcom/android/server/am/ProcessRecord;

    goto :goto_0
.end method

.method switchUserLocked(ILcom/android/server/am/UserStartedState;)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "uss"    # Lcom/android/server/am/UserStartedState;

    .prologue
    .line 2314
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    iget v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 2315
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mUserStackInFront:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 2316
    .local v1, "restoreStackId":I
    iput p1, p0, Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I

    .line 2318
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2319
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "stackNdx":I
    :goto_0
    if-ltz v3, :cond_0

    .line 2320
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, p1}, Lcom/android/server/am/ActivityStack;->switchUserLocked(I)V

    .line 2319
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2323
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v2

    .line 2324
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-nez v2, :cond_1

    .line 2325
    iget-object v2, p0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    .line 2327
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v0

    .line 2328
    .local v0, "homeInFront":Z
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStack(Z)V

    .line 2329
    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->moveTaskToTop(I)V

    .line 2330
    return v0
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 527
    invoke-virtual {p0}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    .line 528
    .local v0, "focusedStack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 529
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_1

    move-object v4, v1

    .line 542
    :cond_0
    :goto_0
    return-object v4

    .line 533
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "stackNdx":I
    :goto_1
    if-ltz v3, :cond_0

    .line 534
    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    .line 535
    .local v2, "stack":Lcom/android/server/am/ActivityStack;
    if-eq v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 536
    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 537
    if-eqz v1, :cond_2

    move-object v4, v1

    .line 538
    goto :goto_0

    .line 533
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method updatePreviousProcessLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 2016
    const/4 v0, 0x0

    .line 2017
    .local v0, "fgApp":Lcom/android/server/am/ProcessRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "stackNdx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 2018
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    .line 2019
    .local v1, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2020
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_2

    .line 2021
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 2031
    .end local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_0
    :goto_1
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v0, :cond_1

    iget-wide v3, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iget-object v5, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v5, v5, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    if-eq v3, v4, :cond_1

    .line 2034
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iput-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcess:Lcom/android/server/am/ProcessRecord;

    .line 2035
    iget-object v3, p0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v4, p1, Lcom/android/server/am/ActivityRecord;->lastVisibleTime:J

    iput-wide v4, v3, Lcom/android/server/am/ActivityManagerService;->mPreviousProcessVisibleTime:J

    .line 2037
    :cond_1
    return-void

    .line 2022
    .restart local v1    # "stack":Lcom/android/server/am/ActivityStack;
    :cond_2
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    .line 2023
    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    goto :goto_1

    .line 2017
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method validateTopActivitiesLocked()V
    .locals 9

    .prologue
    .line 2374
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .local v4, "stackNdx":I
    :goto_0
    if-ltz v4, :cond_7

    .line 2375
    iget-object v6, p0, Lcom/android/server/am/ActivityStackSupervisor;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    .line 2376
    .local v3, "stack":Lcom/android/server/am/ActivityStack;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    .line 2377
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_1

    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2378
    .local v5, "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStackSupervisor;->isFrontStack(Lcom/android/server/am/ActivityStack;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2379
    if-nez v1, :cond_2

    .line 2380
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateTop...: null top activity, stack="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 2377
    .end local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_1
    iget-object v5, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_1

    .line 2382
    .restart local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_2
    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 2383
    .local v0, "pausing":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_3

    .line 2384
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateTop...: top stack has pausing activity r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :cond_3
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_0

    .line 2388
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateTop...: activity in front not resumed r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2393
    .end local v0    # "pausing":Lcom/android/server/am/ActivityRecord;
    :cond_4
    iget-object v2, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 2394
    .local v2, "resumed":Lcom/android/server/am/ActivityRecord;
    if-eqz v2, :cond_5

    if-ne v2, v1, :cond_5

    .line 2395
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateTop...: back stack has resumed activity r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2398
    :cond_5
    if-eqz v1, :cond_0

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v5, v6, :cond_6

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_0

    .line 2400
    :cond_6
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateTop...: activity in back resumed r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2405
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "resumed":Lcom/android/server/am/ActivityRecord;
    .end local v3    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v5    # "state":Lcom/android/server/am/ActivityStack$ActivityState;
    :cond_7
    return-void
.end method
