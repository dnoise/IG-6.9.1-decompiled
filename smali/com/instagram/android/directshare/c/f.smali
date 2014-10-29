.class final Lcom/instagram/android/directshare/c/f;
.super Ljava/lang/Object;
.source "InboxFragment.java"

# interfaces
.implements Lcom/instagram/common/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/d",
        "<",
        "Lcom/instagram/android/c2dm/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/c/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/c/c;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/instagram/android/directshare/c/f;->a:Lcom/instagram/android/directshare/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/instagram/android/directshare/c/f;->a:Lcom/instagram/android/directshare/c/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/c/c;->l(Lcom/instagram/android/directshare/c/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/directshare/c/g;

    invoke-direct {v1, p0}, Lcom/instagram/android/directshare/c/g;-><init>(Lcom/instagram/android/directshare/c/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 248
    return-void
.end method

.method private static a(Lcom/instagram/android/c2dm/a;)Z
    .locals 2
    .parameter

    .prologue
    .line 252
    const-string v0, "directshare"

    iget-object v1, p0, Lcom/instagram/android/c2dm/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 234
    check-cast p1, Lcom/instagram/android/c2dm/a;

    invoke-static {p1}, Lcom/instagram/android/directshare/c/f;->a(Lcom/instagram/android/c2dm/a;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/instagram/android/directshare/c/f;->a()V

    return-void
.end method
