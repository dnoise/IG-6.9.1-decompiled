.class public final Lcom/instagram/user/userservice/a/e;
.super Ljava/lang/Object;
.source "AutoCompleteUserServiceHelper.java"

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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/instagram/user/c/d;)V
    .locals 4
    .parameter

    .prologue
    .line 86
    invoke-static {}, Lcom/instagram/user/c/j;->a()Lcom/instagram/user/c/i;

    move-result-object v0

    iget-object v1, p1, Lcom/instagram/user/c/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/instagram/user/c/i;->a(Ljava/lang/String;)Lcom/instagram/user/c/a;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_2

    .line 91
    invoke-virtual {v1}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v2

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v2, Lcom/instagram/user/c/c;->e:Lcom/instagram/user/c/c;

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v2, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->u()Lcom/instagram/user/c/c;

    move-result-object v0

    sget-object v2, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-ne v0, v2, :cond_2

    .line 97
    :cond_0
    const/4 v0, 0x0

    .line 98
    invoke-virtual {v1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v2

    sget-object v3, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;

    if-ne v2, v3, :cond_3

    .line 100
    new-instance v0, Lcom/instagram/user/userservice/a/f;

    invoke-direct {v0, p0, v1}, Lcom/instagram/user/userservice/a/f;-><init>(Lcom/instagram/user/userservice/a/e;Lcom/instagram/user/c/a;)V

    .line 134
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 135
    invoke-static {}, Lcom/instagram/user/userservice/a/d;->e()Lcom/instagram/common/y/c/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/common/y/c/d;->execute(Ljava/lang/Runnable;)V

    .line 139
    :cond_2
    return-void

    .line 119
    :cond_3
    invoke-virtual {v1}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;

    move-result-object v2

    sget-object v3, Lcom/instagram/user/c/c;->c:Lcom/instagram/user/c/c;

    if-ne v2, v3, :cond_1

    .line 121
    new-instance v0, Lcom/instagram/user/userservice/a/g;

    invoke-direct {v0, p0, v1}, Lcom/instagram/user/userservice/a/g;-><init>(Lcom/instagram/user/userservice/a/e;Lcom/instagram/user/c/a;)V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic b(Lcom/instagram/common/j/a;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    check-cast p1, Lcom/instagram/user/c/d;

    invoke-direct {p0, p1}, Lcom/instagram/user/userservice/a/e;->a(Lcom/instagram/user/c/d;)V

    return-void
.end method
