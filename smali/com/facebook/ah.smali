.class final Lcom/facebook/ah;
.super Landroid/os/Handler;
.source "GetTokenClient.java"


# instance fields
.field final synthetic a:Lcom/facebook/ag;


# direct methods
.method constructor <init>(Lcom/facebook/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/facebook/ah;->a:Lcom/facebook/ag;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/ah;->a:Lcom/facebook/ag;

    invoke-static {v0, p1}, Lcom/facebook/ag;->a(Lcom/facebook/ag;Landroid/os/Message;)V

    .line 44
    return-void
.end method
