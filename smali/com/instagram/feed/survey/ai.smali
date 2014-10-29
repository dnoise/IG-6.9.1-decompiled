.class final Lcom/instagram/feed/survey/ai;
.super Landroid/os/Handler;
.source "SurveyToolHelper.java"


# instance fields
.field final synthetic a:Lcom/instagram/feed/survey/q;


# direct methods
.method private constructor <init>(Lcom/instagram/feed/survey/q;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/feed/survey/q;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/instagram/feed/survey/ai;-><init>(Lcom/instagram/feed/survey/q;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 622
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 624
    :pswitch_0
    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->d(Lcom/instagram/feed/survey/q;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->d(Lcom/instagram/feed/survey/q;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 630
    :pswitch_1
    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->b(Lcom/instagram/feed/survey/q;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->i(Lcom/instagram/feed/survey/q;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    iget-object v1, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v1}, Lcom/instagram/feed/survey/q;->j(Lcom/instagram/feed/survey/q;)Lcom/instagram/feed/survey/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/q;->a(Lcom/instagram/feed/survey/j;)V

    goto :goto_0

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->k(Lcom/instagram/feed/survey/q;)V

    goto :goto_0

    .line 638
    :pswitch_2
    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->b(Lcom/instagram/feed/survey/q;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->i(Lcom/instagram/feed/survey/q;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    iget-object v1, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v1}, Lcom/instagram/feed/survey/q;->l(Lcom/instagram/feed/survey/q;)Lcom/instagram/feed/survey/MultiQuestionSurvey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/feed/survey/q;->a(Lcom/instagram/feed/survey/MultiQuestionSurvey;)V

    goto :goto_0

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->k(Lcom/instagram/feed/survey/q;)V

    goto :goto_0

    .line 646
    :pswitch_3
    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->m(Lcom/instagram/feed/survey/q;)Z

    goto :goto_0

    .line 650
    :pswitch_4
    iget-object v0, p0, Lcom/instagram/feed/survey/ai;->a:Lcom/instagram/feed/survey/q;

    invoke-static {v0}, Lcom/instagram/feed/survey/q;->n(Lcom/instagram/feed/survey/q;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 622
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
