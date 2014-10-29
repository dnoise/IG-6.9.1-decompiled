.class final Lcom/instagram/cliffjumper/edit/photo/a/m;
.super Landroid/os/Handler;
.source "PhotoFilterFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 165
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V

    .line 168
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    sget v2, Lcom/facebook/az;->loading:I

    invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 170
    invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/a/a;->V()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->b(Lcom/instagram/cliffjumper/edit/photo/a/a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 171
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    goto :goto_0

    .line 172
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->b(Lcom/instagram/cliffjumper/edit/photo/a/a;Ljava/lang/String;)V

    goto :goto_0
.end method
