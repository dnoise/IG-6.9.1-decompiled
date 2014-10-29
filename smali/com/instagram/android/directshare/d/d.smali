.class final Lcom/instagram/android/directshare/d/d;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Lcom/instagram/common/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/d",
        "<",
        "Lcom/instagram/feed/d/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/instagram/android/directshare/d/d;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/instagram/android/directshare/d/d;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;)V

    .line 154
    return-void
.end method

.method private a(Lcom/instagram/feed/d/t;)Z
    .locals 2
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/instagram/android/directshare/d/d;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/instagram/feed/d/t;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/instagram/android/directshare/d/d;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v1}, Lcom/instagram/android/directshare/d/c;->a(Lcom/instagram/android/directshare/d/c;)Lcom/instagram/feed/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 145
    check-cast p1, Lcom/instagram/feed/d/t;

    invoke-direct {p0, p1}, Lcom/instagram/android/directshare/d/d;->a(Lcom/instagram/feed/d/t;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/instagram/android/directshare/d/d;->a()V

    return-void
.end method
