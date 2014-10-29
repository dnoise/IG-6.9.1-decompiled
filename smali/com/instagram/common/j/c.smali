.class final Lcom/instagram/common/j/c;
.super Landroid/os/Handler;
.source "IgEventBus.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/j/b;


# direct methods
.method constructor <init>(Lcom/instagram/common/j/b;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/instagram/common/j/c;->a:Lcom/instagram/common/j/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 45
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/common/j/c;->a:Lcom/instagram/common/j/b;

    invoke-static {v0}, Lcom/instagram/common/j/b;->a(Lcom/instagram/common/j/b;)V

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
