.class public final Lcom/instagram/registrationpush/a;
.super Ljava/lang/Object;
.source "RegistrationPush.java"


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/app/AlarmManager;

.field private final d:Landroid/support/v4/app/bx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/instagram/registrationpush/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/instagram/registrationpush/a;->c:Landroid/app/AlarmManager;

    .line 48
    invoke-static {p1}, Landroid/support/v4/app/bx;->a(Landroid/content/Context;)Landroid/support/v4/app/bx;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/registrationpush/a;->d:Landroid/support/v4/app/bx;

    .line 49
    return-void
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/instagram/p/b;->az:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 122
    return-void
.end method

.method private g()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    const-class v2, Lcom/instagram/registrationpush/RegistrationPushAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    iget-object v1, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/instagram/registrationpush/a;->c:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/instagram/registrationpush/a;->g()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 102
    invoke-virtual {p0}, Lcom/instagram/registrationpush/a;->b()V

    .line 103
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/instagram/n/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/n/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-static {}, Lcom/instagram/n/a;->e()V

    .line 64
    sget-object v0, Lcom/instagram/p/b;->ax:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 65
    sget-object v0, Lcom/instagram/m/c;->h:Lcom/instagram/m/b;

    invoke-virtual {v0}, Lcom/instagram/m/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/registrationpush/b;->a(Ljava/lang/String;)Lcom/instagram/registrationpush/b;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Landroid/support/v4/app/ba;

    iget-object v2, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v4/app/ba;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/support/v4/app/ba;->a()Landroid/support/v4/app/ba;

    move-result-object v1

    sget v2, Lcom/facebook/au;->notification_icon:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->a(I)Landroid/support/v4/app/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    sget v3, Lcom/facebook/az;->instagram:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/instagram/registrationpush/b;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/registrationpush/RegistrationPushActionReceiver;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/registrationpush/RegistrationPushActionReceiver;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ba;->b(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ba;->d()Landroid/app/Notification;

    move-result-object v1

    .line 80
    sget-object v2, Lcom/instagram/p/b;->ay:Lcom/instagram/p/b;

    invoke-virtual {v2}, Lcom/instagram/p/b;->b()Lcom/instagram/common/analytics/b;

    move-result-object v2

    const-string v3, "variation"

    invoke-virtual {v0}, Lcom/instagram/registrationpush/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 81
    iget-object v0, p0, Lcom/instagram/registrationpush/a;->d:Landroid/support/v4/app/bx;

    const-string v2, "registration"

    const v3, 0xfb16

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/registrationpush/a;->d:Landroid/support/v4/app/bx;

    const-string v1, "registration"

    const v2, 0xfb16

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/bx;->a(Ljava/lang/String;I)V

    .line 87
    return-void
.end method

.method public final c()V
    .locals 5

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/instagram/registrationpush/a;->h()V

    .line 91
    invoke-static {}, Lcom/instagram/n/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/n/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sget-object v0, Lcom/instagram/registrationpush/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    sget-object v0, Lcom/instagram/p/b;->av:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 96
    iget-object v2, p0, Lcom/instagram/registrationpush/a;->c:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/instagram/registrationpush/a;->g()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 98
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/instagram/registrationpush/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/instagram/p/b;->aw:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/instagram/registrationpush/a;->h()V

    .line 110
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/instagram/p/b;->aA:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 115
    iget-object v1, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    const-string v2, "com.instagram.android.activity.MainTabActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/instagram/registrationpush/a;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method
