.class public final Lcom/instagram/android/widget/r;
.super Ljava/lang/Object;
.source "ShareActivityUtil.java"


# direct methods
.method private static a(I)Lcom/instagram/android/widget/x;
    .locals 1
    .parameter

    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 57
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    sget-object v0, Lcom/instagram/android/widget/x;->b:Lcom/instagram/android/widget/x;

    goto :goto_0

    .line 49
    :pswitch_1
    sget-object v0, Lcom/instagram/android/widget/x;->c:Lcom/instagram/android/widget/x;

    goto :goto_0

    .line 51
    :pswitch_2
    sget-object v0, Lcom/instagram/android/widget/x;->d:Lcom/instagram/android/widget/x;

    goto :goto_0

    .line 53
    :pswitch_3
    sget-object v0, Lcom/instagram/android/widget/x;->e:Lcom/instagram/android/widget/x;

    goto :goto_0

    .line 55
    :pswitch_4
    sget-object v0, Lcom/instagram/android/widget/x;->f:Lcom/instagram/android/widget/x;

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(IILandroid/content/Intent;Lcom/facebook/b/e;Lcom/instagram/model/a/b;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 26
    invoke-static {p0}, Lcom/instagram/android/widget/r;->a(I)Lcom/instagram/android/widget/x;

    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 30
    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v0

    .line 33
    invoke-virtual {v0, p3}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V

    .line 36
    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {v0}, Lcom/instagram/android/widget/x;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const/4 v1, 0x1

    invoke-virtual {v0, p4, v1}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Z)V

    goto :goto_0
.end method
