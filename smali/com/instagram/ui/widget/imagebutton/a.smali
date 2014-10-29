.class final Lcom/instagram/ui/widget/imagebutton/a;
.super Ljava/lang/Object;
.source "IgImageButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;


# direct methods
.method constructor <init>(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 56
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->a(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 85
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 59
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Lcom/instagram/ui/widget/imagebutton/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/instagram/ui/widget/imagebutton/b;->removeMessages(I)V

    .line 60
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Lcom/instagram/ui/widget/imagebutton/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v1}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Lcom/instagram/ui/widget/imagebutton/b;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4b

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/ui/widget/imagebutton/b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 66
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Lcom/instagram/ui/widget/imagebutton/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/imagebutton/b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Lcom/instagram/ui/widget/imagebutton/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/imagebutton/b;->removeMessages(I)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->c(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V

    goto :goto_0

    .line 75
    :pswitch_3
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Lcom/instagram/ui/widget/imagebutton/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/imagebutton/b;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Lcom/instagram/ui/widget/imagebutton/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/ui/widget/imagebutton/b;->removeMessages(I)V

    .line 79
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->d(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V

    .line 80
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Lcom/instagram/ui/widget/imagebutton/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v1}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->b(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)Lcom/instagram/ui/widget/imagebutton/b;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/ui/widget/imagebutton/b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/instagram/ui/widget/imagebutton/a;->a:Lcom/instagram/ui/widget/imagebutton/IgImageButton;

    invoke-static {v0}, Lcom/instagram/ui/widget/imagebutton/IgImageButton;->c(Lcom/instagram/ui/widget/imagebutton/IgImageButton;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
