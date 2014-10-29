.class public abstract Lcom/instagram/api/j/b;
.super Lcom/instagram/api/j/c;
.source "AbstractIgLoaderRequest.java"

# interfaces
.implements Lcom/instagram/api/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/j/c",
        "<TT;>;",
        "Lcom/instagram/api/c/a;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Lcom/instagram/common/a/c/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
    .locals 0
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
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/j/c;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 32
    return-void
.end method


# virtual methods
.method public final a()Lcom/instagram/common/a/c/b;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/instagram/common/a/c/b;

    invoke-direct {v0}, Lcom/instagram/common/a/c/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    .line 59
    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    invoke-static {v0, p0}, Lcom/instagram/api/i/a;->a(Lcom/instagram/common/a/c/d;Lcom/instagram/api/c/a;)V

    .line 60
    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    invoke-virtual {p0, v0}, Lcom/instagram/api/j/b;->a(Lcom/instagram/common/a/c/b;)V

    .line 61
    invoke-virtual {p0}, Lcom/instagram/api/j/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    invoke-static {v0}, Lcom/instagram/api/i/b;->b(Lcom/instagram/common/a/c/b;)Lcom/instagram/common/a/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    .line 63
    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    invoke-virtual {p0, v0}, Lcom/instagram/api/j/b;->b(Lcom/instagram/common/a/c/b;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    return-object v0
.end method

.method protected a(Lcom/instagram/common/a/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    return-void
.end method

.method protected b(Lcom/instagram/common/a/c/b;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract c_()Ljava/lang/String;
.end method

.method public e_()Z
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->I()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/instagram/l/b/a;->a()Lcom/instagram/l/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/l/b/a;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/api/j/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/common/y/g/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/api/j/b;->a:Lcom/instagram/common/a/c/b;

    .line 36
    invoke-super {p0}, Lcom/instagram/api/j/c;->g()V

    .line 37
    return-void
.end method

.method public final g_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/instagram/api/j/b;->c_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/api/j/b;->e_()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/api/h/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
