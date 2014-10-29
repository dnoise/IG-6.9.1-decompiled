.class final Lcom/instagram/android/fragment/fq;
.super Ljava/lang/Object;
.source "UserDetailFragment.java"

# interfaces
.implements Lcom/instagram/common/j/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instagram/common/j/d",
        "<",
        "Lcom/instagram/user/c/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fo;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fo;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/instagram/android/fragment/fq;->a:Lcom/instagram/android/fragment/fo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/instagram/android/fragment/fq;->a:Lcom/instagram/android/fragment/fo;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/fo;->W()Lcom/instagram/android/feed/a/a;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/feed/a/n;

    invoke-virtual {v0}, Lcom/instagram/android/feed/a/n;->notifyDataSetChanged()V

    .line 138
    return-void
.end method

.method private a(Lcom/instagram/user/c/d;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 120
    iget-object v0, p1, Lcom/instagram/user/c/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/instagram/android/fragment/fq;->a:Lcom/instagram/android/fragment/fo;

    invoke-static {v2}, Lcom/instagram/android/fragment/fo;->b(Lcom/instagram/android/fragment/fo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 132
    :goto_0
    return v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/fq;->a:Lcom/instagram/android/fragment/fo;

    invoke-static {v0}, Lcom/instagram/android/fragment/fo;->c(Lcom/instagram/android/fragment/fo;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/instagram/android/fragment/fq;->a:Lcom/instagram/android/fragment/fo;

    invoke-static {v0}, Lcom/instagram/android/fragment/fo;->c(Lcom/instagram/android/fragment/fo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    .line 126
    iget-object v3, p1, Lcom/instagram/user/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 127
    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/instagram/common/j/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 116
    check-cast p1, Lcom/instagram/user/c/d;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/fq;->a(Lcom/instagram/user/c/d;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/instagram/android/fragment/fq;->a()V

    return-void
.end method
