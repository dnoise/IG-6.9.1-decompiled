.class public final Lcom/instagram/android/c/a/i;
.super Lcom/instagram/api/j/b;
.source "PeopleTagReviewRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "I",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 31
    iput p3, p0, Lcom/instagram/android/c/a/i;->a:I

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/instagram/api/j/b;->a(Lcom/instagram/api/j/j;)V

    .line 72
    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 3
    .parameter

    .prologue
    .line 57
    const-string v1, "enabled"

    iget v0, p0, Lcom/instagram/android/c/a/i;->a:I

    sget v2, Lcom/instagram/android/c/a/j;->a:I

    if-ne v0, v2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void

    .line 57
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 62
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v1

    .line 63
    iget v0, p0, Lcom/instagram/android/c/a/i;->a:I

    sget v2, Lcom/instagram/android/c/a/j;->a:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/instagram/user/c/a;->b(Z)V

    .line 64
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/instagram/user/c/i;->b(Lcom/instagram/user/c/a;)Lcom/instagram/user/c/a;

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "usertags/review_preference/"

    return-object v0
.end method

.method public final e_()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
