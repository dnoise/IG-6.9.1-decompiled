.class public final Lcom/instagram/feed/e/c;
.super Ljava/lang/Object;
.source "MegaphoneDismissDialog.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/instagram/feed/e/b;

.field private final c:Lcom/instagram/feed/f/d;

.field private d:Landroid/app/Dialog;

.field private e:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/feed/e/b;Lcom/instagram/feed/f/d;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/feed/e/c;->e:[Ljava/lang/CharSequence;

    .line 28
    iput-object p1, p0, Lcom/instagram/feed/e/c;->a:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/instagram/feed/e/c;->b:Lcom/instagram/feed/e/b;

    .line 30
    iput-object p3, p0, Lcom/instagram/feed/e/c;->c:Lcom/instagram/feed/f/d;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/instagram/feed/e/c;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/feed/e/c;->d:Landroid/app/Dialog;

    return-object v0
.end method

.method private b()[Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 34
    iget-object v0, p0, Lcom/instagram/feed/e/c;->e:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/instagram/feed/e/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/facebook/az;->megaphone_dismiss:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/instagram/feed/e/c;->e:[Ljava/lang/CharSequence;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/instagram/feed/e/c;->e:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/feed/e/c;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/instagram/feed/e/c;->b()[Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/feed/e/c;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/feed/e/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/feed/e/c;)Lcom/instagram/feed/f/d;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/feed/e/c;->c:Lcom/instagram/feed/f/d;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/feed/e/c;)Lcom/instagram/feed/e/b;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/instagram/feed/e/c;->b:Lcom/instagram/feed/e/b;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/feed/e/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/instagram/feed/e/c;->b()[Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/instagram/feed/e/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/instagram/feed/e/e;-><init>(Lcom/instagram/feed/e/c;B)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->d()Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/feed/e/c;->d:Landroid/app/Dialog;

    .line 47
    iget-object v0, p0, Lcom/instagram/feed/e/c;->d:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/feed/e/d;

    invoke-direct {v1, p0}, Lcom/instagram/feed/e/d;-><init>(Lcom/instagram/feed/e/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    iget-object v0, p0, Lcom/instagram/feed/e/c;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 54
    return-void
.end method
