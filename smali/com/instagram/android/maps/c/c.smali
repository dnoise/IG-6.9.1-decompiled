.class public final Lcom/instagram/android/maps/c/c;
.super Ljava/lang/Object;
.source "PhotoMapsEditHelper.java"


# instance fields
.field private final a:Landroid/support/v4/app/k;

.field private final b:I

.field private final c:Lcom/instagram/ui/dialog/f;

.field private final d:Landroid/os/Handler;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/k;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcom/instagram/android/maps/c/d;

    invoke-direct {v0, p0}, Lcom/instagram/android/maps/c/d;-><init>(Lcom/instagram/android/maps/c/c;)V

    iput-object v0, p0, Lcom/instagram/android/maps/c/c;->d:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/instagram/android/maps/c/c;->a:Landroid/support/v4/app/k;

    .line 51
    iput p2, p0, Lcom/instagram/android/maps/c/c;->b:I

    .line 53
    new-instance v0, Lcom/instagram/ui/dialog/f;

    invoke-direct {v0, p1}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/maps/c/c;->c:Lcom/instagram/ui/dialog/f;

    .line 54
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/c/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/instagram/android/maps/c/c;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/instagram/android/maps/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/maps/c/c;->c()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/maps/c/c;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/instagram/android/maps/c/c;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 102
    iget-object v0, p0, Lcom/instagram/android/maps/c/c;->d:Landroid/os/Handler;

    new-instance v1, Lcom/instagram/android/maps/c/g;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/maps/c/g;-><init>(Lcom/instagram/android/maps/c/c;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method static synthetic b(Lcom/instagram/android/maps/c/c;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/maps/c/c;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 95
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/maps/c/c;->a:Landroid/support/v4/app/k;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 99
    return-void
.end method

.method static synthetic c(Lcom/instagram/android/maps/c/c;)I
    .locals 1
    .parameter

    .prologue
    .line 30
    iget v0, p0, Lcom/instagram/android/maps/c/c;->b:I

    return v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 131
    new-instance v0, Lcom/instagram/android/maps/c/k;

    iget-object v1, p0, Lcom/instagram/android/maps/c/c;->a:Landroid/support/v4/app/k;

    iget-object v2, p0, Lcom/instagram/android/maps/c/c;->a:Landroid/support/v4/app/k;

    invoke-virtual {v2}, Landroid/support/v4/app/k;->e()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/maps/c/j;

    invoke-direct {v3, p0}, Lcom/instagram/android/maps/c/j;-><init>(Lcom/instagram/android/maps/c/c;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/instagram/android/maps/c/k;-><init>(Lcom/instagram/android/maps/c/c;Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V

    iget-object v1, p0, Lcom/instagram/android/maps/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/c/k;->a(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method static synthetic d(Lcom/instagram/android/maps/c/c;)Landroid/support/v4/app/k;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/maps/c/c;->a:Landroid/support/v4/app/k;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/maps/c/c;)Lcom/instagram/ui/dialog/f;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/instagram/android/maps/c/c;->c:Lcom/instagram/ui/dialog/f;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/maps/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/instagram/android/maps/c/c;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 58
    new-instance v0, Lcom/instagram/android/maps/c/l;

    iget-object v2, p0, Lcom/instagram/android/maps/c/c;->a:Landroid/support/v4/app/k;

    iget-object v1, p0, Lcom/instagram/android/maps/c/c;->a:Landroid/support/v4/app/k;

    invoke-virtual {v1}, Landroid/support/v4/app/k;->e()Landroid/support/v4/app/an;

    move-result-object v3

    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v4

    new-instance v5, Lcom/instagram/android/maps/c/e;

    invoke-direct {v5, p0}, Lcom/instagram/android/maps/c/e;-><init>(Lcom/instagram/android/maps/c/c;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/c/l;-><init>(Lcom/instagram/android/maps/c/c;Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 91
    invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/maps/e/a;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/maps/c/l;->a(Ljava/util/List;)V

    .line 92
    return-void
.end method
