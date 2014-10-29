.class public final Lcom/instagram/bugreport/rageshake/a;
.super Lcom/instagram/common/w/f;
.source "InstagramRageShakeHelper.java"


# instance fields
.field private b:Lcom/instagram/ui/dialog/b;

.field private c:Lcom/instagram/bugreport/rageshake/f;

.field private d:Lcom/instagram/o/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/instagram/common/w/f;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/instagram/bugreport/rageshake/a;Lcom/instagram/bugreport/rageshake/f;)Lcom/instagram/bugreport/rageshake/f;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/instagram/bugreport/rageshake/a;->c:Lcom/instagram/bugreport/rageshake/f;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/bugreport/rageshake/a;Lcom/instagram/o/b/a;)Lcom/instagram/o/b/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/instagram/bugreport/rageshake/a;->d:Lcom/instagram/o/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/bugreport/rageshake/a;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/a;->d()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/bugreport/rageshake/a;)Landroid/support/v4/app/k;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->a:Landroid/support/v4/app/k;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/bugreport/rageshake/a;)Landroid/support/v4/app/k;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->a:Landroid/support/v4/app/k;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/bugreport/rageshake/a;)Landroid/support/v4/app/k;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->a:Landroid/support/v4/app/k;

    return-object v0
.end method

.method private d()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/instagram/bugreport/rageshake/a;->a:Landroid/support/v4/app/k;

    sget v3, Lcom/facebook/az;->rageshake_bug_report_option:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/k;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/instagram/bugreport/rageshake/a;->a:Landroid/support/v4/app/k;

    sget v3, Lcom/facebook/az;->rageshake_update_option:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/k;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 48
    return-object v0
.end method

.method static synthetic e(Lcom/instagram/bugreport/rageshake/a;)Lcom/instagram/bugreport/rageshake/f;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->c:Lcom/instagram/bugreport/rageshake/f;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/bugreport/rageshake/a;)Landroid/support/v4/app/k;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->a:Landroid/support/v4/app/k;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/bugreport/rageshake/a;)Landroid/support/v4/app/k;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->a:Landroid/support/v4/app/k;

    return-object v0
.end method

.method static synthetic h(Lcom/instagram/bugreport/rageshake/a;)Lcom/instagram/o/b/a;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->d:Lcom/instagram/o/b/a;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 35
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/bugreport/rageshake/a;->a:Landroid/support/v4/app/k;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->b:Lcom/instagram/ui/dialog/b;

    .line 36
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->b:Lcom/instagram/ui/dialog/b;

    sget v1, Lcom/facebook/az;->rageshake_title:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    .line 37
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->b:Lcom/instagram/ui/dialog/b;

    invoke-direct {p0}, Lcom/instagram/bugreport/rageshake/a;->d()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/instagram/bugreport/rageshake/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/bugreport/rageshake/b;-><init>(Lcom/instagram/bugreport/rageshake/a;B)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    .line 38
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->b:Lcom/instagram/ui/dialog/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    .line 39
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->b:Lcom/instagram/ui/dialog/b;

    invoke-virtual {p0}, Lcom/instagram/bugreport/rageshake/a;->b()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/instagram/ui/dialog/b;

    .line 40
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->b:Lcom/instagram/ui/dialog/b;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 41
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->c:Lcom/instagram/bugreport/rageshake/f;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->c:Lcom/instagram/bugreport/rageshake/f;

    invoke-virtual {v0}, Lcom/instagram/bugreport/rageshake/f;->a()V

    .line 79
    iput-object v1, p0, Lcom/instagram/bugreport/rageshake/a;->c:Lcom/instagram/bugreport/rageshake/f;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->b:Lcom/instagram/ui/dialog/b;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/instagram/bugreport/rageshake/a;->b:Lcom/instagram/ui/dialog/b;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->a()V

    .line 84
    iput-object v1, p0, Lcom/instagram/bugreport/rageshake/a;->b:Lcom/instagram/ui/dialog/b;

    .line 86
    :cond_1
    invoke-super {p0, p1}, Lcom/instagram/common/w/f;->a(Landroid/app/Activity;)V

    .line 87
    return-void
.end method
