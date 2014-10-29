.class final Lcom/instagram/feed/d/z;
.super Landroid/os/Handler;
.source "MediaRenderCache.java"


# instance fields
.field final synthetic a:Lcom/instagram/feed/d/w;

.field private final b:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Lcom/instagram/feed/d/w;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/instagram/feed/d/z;->a:Lcom/instagram/feed/d/w;

    .line 191
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 188
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Lcom/instagram/feed/d/z;->b:Landroid/graphics/Picture;

    .line 192
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown message"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/l;

    .line 199
    iget-object v2, p0, Lcom/instagram/feed/d/z;->a:Lcom/instagram/feed/d/w;

    invoke-virtual {v2, v0}, Lcom/instagram/feed/d/w;->e(Lcom/instagram/feed/d/l;)Landroid/text/Layout;

    goto :goto_0

    .line 221
    :pswitch_1
    iget-object v1, p0, Lcom/instagram/feed/d/z;->a:Lcom/instagram/feed/d/w;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/instagram/feed/d/l;

    invoke-virtual {v1, v0}, Lcom/instagram/feed/d/w;->e(Lcom/instagram/feed/d/l;)Landroid/text/Layout;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/instagram/feed/d/z;->b:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 223
    iget-object v0, p0, Lcom/instagram/feed/d/z;->b:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 224
    :cond_0
    return-void

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
