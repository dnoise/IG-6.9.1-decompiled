.class final Lcom/instagram/creation/video/f/ag;
.super Landroid/content/BroadcastReceiver;
.source "VideoCoverFragmentBase.java"


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/f/ad;


# direct methods
.method private constructor <init>(Lcom/instagram/creation/video/f/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/instagram/creation/video/f/ag;->a:Lcom/instagram/creation/video/f/ad;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/creation/video/f/ad;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/instagram/creation/video/f/ag;-><init>(Lcom/instagram/creation/video/f/ad;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/instagram/creation/video/f/ag;->a:Lcom/instagram/creation/video/f/ad;

    invoke-static {v0}, Lcom/instagram/creation/video/f/ad;->b(Lcom/instagram/creation/video/f/ad;)V

    .line 106
    return-void
.end method
