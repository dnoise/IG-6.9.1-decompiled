.class final Lcom/instagram/android/feed/d/i;
.super Ljava/lang/Object;
.source "SponsoredHideHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/d/d;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/d/d;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/d/d;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/d/i;-><init>(Lcom/instagram/android/feed/d/d;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 89
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 90
    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->c(Lcom/instagram/android/feed/d/d;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v2, v0, p2

    .line 92
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->d(Lcom/instagram/android/feed/d/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/d/q;

    .line 94
    iget-object v4, v0, Lcom/instagram/feed/d/q;->b:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/instagram/feed/d/q;->b:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    iget-object v0, v0, Lcom/instagram/feed/d/q;->a:Ljava/lang/String;

    :goto_1
    move-object v1, v0

    .line 97
    goto :goto_0

    .line 99
    :cond_0
    if-nez v1, :cond_1

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Menu item click not handled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    invoke-static {}, Lcom/instagram/feed/g/b;->a()Lcom/instagram/feed/g/b;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v2}, Lcom/instagram/android/feed/d/d;->e(Lcom/instagram/android/feed/d/d;)Lcom/instagram/feed/d/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instagram/feed/g/b;->b(Lcom/instagram/feed/d/l;)V

    .line 104
    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->e(Lcom/instagram/android/feed/d/d;)Lcom/instagram/feed/d/l;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v2}, Lcom/instagram/android/feed/d/d;->f(Lcom/instagram/android/feed/d/d;)Lcom/instagram/android/feed/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/feed/a/a;->c()Lcom/instagram/android/fragment/a;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/instagram/feed/c/g;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->h(Lcom/instagram/android/feed/d/d;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v1}, Lcom/instagram/android/feed/d/d;->g(Lcom/instagram/android/feed/d/d;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 111
    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->i(Lcom/instagram/android/feed/d/d;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 115
    :goto_2
    return-void

    .line 113
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/feed/d/i;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->f(Lcom/instagram/android/feed/d/d;)Lcom/instagram/android/feed/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->notifyDataSetChanged()V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method
