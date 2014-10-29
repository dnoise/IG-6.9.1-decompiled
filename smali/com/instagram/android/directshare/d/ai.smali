.class final Lcom/instagram/android/directshare/d/ai;
.super Ljava/lang/Object;
.source "DirectSharePermalinkMoreOptionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/ad;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/d/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/d/ad;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/ai;-><init>(Lcom/instagram/android/directshare/d/ad;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter "which"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->b(Lcom/instagram/android/directshare/d/ad;)[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p2

    .line 89
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->directshare_delete:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->d(Lcom/instagram/android/directshare/d/ad;)V

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->directshare_hide:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->e(Lcom/instagram/android/directshare/d/ad;)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/feed/c/a;->a(Ljava/lang/CharSequence;Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->g(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/android/feed/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->f(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->c()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/feed/c/a;->a(Lcom/instagram/user/c/a;)V

    goto :goto_0

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->directshare_ignore_all:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 96
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->h(Lcom/instagram/android/directshare/d/ad;)V

    goto :goto_0

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->report_inappropriate:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/ad;->c(Lcom/instagram/android/directshare/d/ad;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/directshare/d/ai;->a:Lcom/instagram/android/directshare/d/ad;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/ad;->f(Lcom/instagram/android/directshare/d/ad;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/util/ReportMediaUtil;->a(Landroid/content/Context;Lcom/instagram/feed/d/l;)V

    goto :goto_0
.end method
