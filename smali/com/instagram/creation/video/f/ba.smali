.class final Lcom/instagram/creation/video/f/ba;
.super Landroid/content/BroadcastReceiver;
.source "VideoEditFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/ar;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/video/f/ar;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/instagram/creation/video/f/ba;->a:Lcom/instagram/creation/video/f/ar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/video/f/ar;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/ba;-><init>(Lcom/instagram/creation/video/f/ar;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter "intent"

    .prologue
    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "VideoEditFragment.INTENT_ACTION_EDIT_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/instagram/creation/video/f/ba;->a:Lcom/instagram/creation/video/f/ar;

    const-string v1, "VideoEditFragment.EDIT_MODE"

    sget-object v2, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    iget v2, v2, Lcom/instagram/creation/video/f/av;->d:I

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/creation/video/f/ar;->a(Lcom/instagram/creation/video/f/ar;I)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    const-string v1, "VideoEditFragment.INTENT_ACTION_START_SHARE_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/instagram/creation/video/f/ba;->a:Lcom/instagram/creation/video/f/ar;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ar;->a(Lcom/instagram/creation/video/f/ar;)V

    goto :goto_0
.end method
