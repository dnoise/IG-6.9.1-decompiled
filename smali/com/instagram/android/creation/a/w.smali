.class final Lcom/instagram/android/creation/a/w;
.super Landroid/os/Handler;
.source "FollowersShareFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/t;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/instagram/android/creation/a/w;->a:Lcom/instagram/android/creation/a/t;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/w;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/t;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/instagram/android/creation/a/w;->a:Lcom/instagram/android/creation/a/t;

    sget v1, Lcom/facebook/az;->failed_to_detect_location:I

    invoke-virtual {v0, v1}, Lcom/instagram/android/creation/a/t;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lcom/instagram/android/creation/a/w;->a:Lcom/instagram/android/creation/a/t;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/t;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/creation/a/w;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->b(Lcom/instagram/android/creation/a/t;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/instagram/android/creation/a/w;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->a(Lcom/instagram/android/creation/a/t;)Z

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
