.class public Lcom/instagram/bugreport/rageshake/RageShakeService;
.super Landroid/app/IntentService;
.source "RageShakeService.java"


# instance fields
.field private final a:Lcom/instagram/common/a/a/k;

.field private b:Lcom/instagram/bugreport/a/b;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "RageShakeService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Lcom/instagram/common/a/a/f;

    invoke-direct {v0}, Lcom/instagram/common/a/a/f;-><init>()V

    iput-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->a:Lcom/instagram/common/a/a/k;

    .line 40
    return-void
.end method

.method private a()V
    .locals 7

    .prologue
    .line 87
    sget v0, Lcom/facebook/az;->rageshake_send_success:I

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/rageshake/RageShakeService;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/facebook/az;->rageshake_send_description:I

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/rageshake/RageShakeService;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/facebook/au;->notification_icon:I

    sget v0, Lcom/facebook/az;->rageshake_send_success:I

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/rageshake/RageShakeService;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/instagram/bugreport/rageshake/RageShakeService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)V

    .line 93
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/instagram/bugreport/rageshake/RageShakeService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    const-string v1, "RageShakeActivity.INTENT_EXTRA_DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "RageShakeActivity.INTENT_EXTRA_MEDIA_FILE_PATH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v1, "RageShakeActivity.INTENT_EXTRA_OTHER_ATTACHMENT_FILE_PATHS"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/instagram/bugreport/rageshake/RageShakeService;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeService;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    new-instance v0, Landroid/support/v4/app/ba;

    iget-object v1, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/ba;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ba;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/ba;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/ba;->a(I)Landroid/support/v4/app/ba;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ba;->a()Landroid/support/v4/app/ba;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/support/v4/app/ba;->d(Ljava/lang/CharSequence;)Landroid/support/v4/app/ba;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/ba;->a(J)Landroid/support/v4/app/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v2, v2

    const/high16 v3, 0x1000

    invoke-static {v1, v2, p5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/ba;->a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ba;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/ba;->d()Landroid/app/Notification;

    move-result-object v0

    .line 144
    invoke-static {p0}, Landroid/support/v4/app/bx;->a(Landroid/content/Context;)Landroid/support/v4/app/bx;

    move-result-object v1

    .line 145
    invoke-virtual {v1, p6, v0}, Landroid/support/v4/app/bx;->a(ILandroid/app/Notification;)V

    .line 146
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 100
    new-instance v5, Landroid/content/Intent;

    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->c:Landroid/content/Context;

    const-class v1, Lcom/instagram/bugreport/rageshake/RageShakeActivity;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    const-string v0, "RageShakeActivity.INTENT_EXTRA_RETRY"

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    const-string v0, "RageShakeActivity.INTENT_EXTRA_DESCRIPTION"

    iget-object v1, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->b:Lcom/instagram/bugreport/a/b;

    invoke-virtual {v1}, Lcom/instagram/bugreport/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v0, "RageShakeActivity.INTENT_EXTRA_MEDIA_FILE_PATH"

    iget-object v1, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->b:Lcom/instagram/bugreport/a/b;

    invoke-virtual {v1}, Lcom/instagram/bugreport/a/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v0, "RageShakeActivity.INTENT_EXTRA_OTHER_ATTACHMENT_FILE_PATHS"

    iget-object v1, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->b:Lcom/instagram/bugreport/a/b;

    invoke-virtual {v1}, Lcom/instagram/bugreport/a/b;->h()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 112
    sget v0, Lcom/facebook/az;->rageshake_fail_title:I

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->b:Lcom/instagram/bugreport/a/b;

    invoke-virtual {v3}, Lcom/instagram/bugreport/a/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/bugreport/rageshake/RageShakeService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/facebook/az;->rageshake_fail_text:I

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/rageshake/RageShakeService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x108008a

    sget v0, Lcom/facebook/az;->rageshake_fail_ticker:I

    invoke-virtual {p0, v0}, Lcom/instagram/bugreport/rageshake/RageShakeService;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/instagram/bugreport/rageshake/RageShakeService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Intent;I)V

    .line 120
    return-void
.end method

.method static synthetic b(Lcom/instagram/bugreport/rageshake/RageShakeService;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/RageShakeService;->b()V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/instagram/bugreport/rageshake/RageShakeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->c:Landroid/content/Context;

    .line 60
    new-instance v0, Lcom/instagram/bugreport/a/g;

    iget-object v1, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/bugreport/a/g;-><init>(Landroid/content/Context;)V

    const-string v1, "RageShakeActivity.INTENT_EXTRA_DESCRIPTION"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/bugreport/a/g;->a(Ljava/lang/String;)Lcom/instagram/bugreport/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/bugreport/a/d;->a()Lcom/instagram/bugreport/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->b:Lcom/instagram/bugreport/a/b;

    .line 63
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->b:Lcom/instagram/bugreport/a/b;

    const-string v1, "RageShakeActivity.INTENT_EXTRA_OTHER_ATTACHMENT_FILE_PATHS"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/bugreport/a/b;->a(Ljava/util/ArrayList;)V

    .line 65
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->b:Lcom/instagram/bugreport/a/b;

    const-string v1, "RageShakeActivity.INTENT_EXTRA_MEDIA_FILE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/bugreport/a/b;->a(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->b:Lcom/instagram/bugreport/a/b;

    new-instance v1, Lcom/instagram/bugreport/rageshake/e;

    invoke-direct {v1, p0}, Lcom/instagram/bugreport/rageshake/e;-><init>(Lcom/instagram/bugreport/rageshake/RageShakeService;)V

    invoke-virtual {v0, v1}, Lcom/instagram/bugreport/a/b;->a(Lcom/instagram/common/a/a/j;)Lcom/instagram/common/a/a/a;

    .line 79
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->a:Lcom/instagram/common/a/a/k;

    iget-object v1, p0, Lcom/instagram/bugreport/rageshake/RageShakeService;->b:Lcom/instagram/bugreport/a/b;

    invoke-interface {v0, v1}, Lcom/instagram/common/a/a/k;->a(Lcom/instagram/common/a/a/a;)V

    .line 80
    return-void
.end method
