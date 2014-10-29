.class final Lcom/instagram/android/directshare/e/o;
.super Ljava/lang/Object;
.source "RequestedDirectSharesFragment.java"

# interfaces
.implements Lcom/instagram/common/j/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/e",
        "<",
        "Lcom/instagram/user/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/e/b;


# direct methods
.method private constructor <init>(Lcom/instagram/android/directshare/e/b;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/instagram/android/directshare/e/o;->a:Lcom/instagram/android/directshare/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/directshare/e/b;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/e/o;-><init>(Lcom/instagram/android/directshare/e/b;)V

    return-void
.end method

.method private static a(Lcom/instagram/user/c/d;)V
    .locals 3
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/user/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v1

    sget-object v2, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;

    if-ne v1, v2, :cond_1

    .line 77
    :cond_0
    new-instance v1, Lcom/instagram/f/c/a;

    invoke-direct {v1}, Lcom/instagram/f/c/a;-><init>()V

    .line 78
    invoke-virtual {v1, v0}, Lcom/instagram/f/c/a;->a(Lcom/instagram/user/c/a;)V

    .line 79
    invoke-static {v1}, Lcom/instagram/android/directshare/c/x;->b(Lcom/instagram/f/c/a;)V

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    check-cast p1, Lcom/instagram/user/c/d;

    invoke-static {p1}, Lcom/instagram/android/directshare/e/o;->a(Lcom/instagram/user/c/d;)V

    return-void
.end method
