.class public final Lcom/instagram/android/login/d/a;
.super Lcom/instagram/common/c/a;
.source "LogoutTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/c/a",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/instagram/common/c/a;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/instagram/android/login/d/a;->a:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/instagram/android/login/d/a;->b:Landroid/support/v4/app/s;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/Void;)V
    .locals 2
    .parameter

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/instagram/common/c/a;->a(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/instagram/android/login/d/a;->b:Landroid/support/v4/app/s;

    const-string v1, "ProgressDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/dialog/g;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/instagram/ui/dialog/g;->b()V

    .line 69
    :cond_0
    invoke-static {}, Lcom/instagram/common/y/f/b;->a()V

    .line 70
    return-void
.end method

.method private varargs c()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/login/d/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/instagram/android/login/d/c;-><init>(B)V

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    .line 39
    iget-object v0, p0, Lcom/instagram/android/login/d/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/y/f/b;->b(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/instagram/android/login/d/a;->c()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final a()V
    .locals 3

    .prologue
    .line 53
    invoke-super {p0}, Lcom/instagram/common/c/a;->a()V

    .line 54
    new-instance v0, Lcom/instagram/android/login/d/b;

    invoke-direct {v0}, Lcom/instagram/android/login/d/b;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/instagram/android/login/d/a;->b:Landroid/support/v4/app/s;

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    .line 56
    const-string v2, "ProgressDialog"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/g;->a(Landroid/support/v4/app/ag;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    check-cast p1, Ljava/lang/Void;

    invoke-direct {p0, p1}, Lcom/instagram/android/login/d/a;->a(Ljava/lang/Void;)V

    return-void
.end method
