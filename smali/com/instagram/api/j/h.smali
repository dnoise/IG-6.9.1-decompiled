.class public Lcom/instagram/api/j/h;
.super Lcom/instagram/api/j/l;
.source "ApiRequestLoaderCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/instagram/api/j/l",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/instagram/api/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/api/j/c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/api/j/c;Lcom/instagram/api/j/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/instagram/api/j/c",
            "<TT;>;",
            "Lcom/instagram/api/j/a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/api/j/l;-><init>(Landroid/content/Context;Lcom/instagram/api/j/c;Lcom/instagram/api/j/a;)V

    .line 29
    iput-object p2, p0, Lcom/instagram/api/j/h;->a:Lcom/instagram/api/j/c;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/instagram/api/j/h;->a:Lcom/instagram/api/j/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/support/v4/a/c;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/api/j/j",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/instagram/api/j/h;->a()Lcom/instagram/api/j/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/instagram/api/j/h;->a()Lcom/instagram/api/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/j/a;->a()V

    .line 39
    :cond_0
    new-instance v0, Lcom/instagram/api/j/i;

    invoke-virtual {p0}, Lcom/instagram/api/j/h;->b()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/instagram/api/j/i;-><init>(Lcom/instagram/api/j/h;Landroid/content/Context;)V

    return-object v0
.end method

.method public final a(Landroid/support/v4/a/c;Lcom/instagram/api/j/j;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/a/c",
            "<",
            "Lcom/instagram/api/j/j",
            "<TT;>;>;",
            "Lcom/instagram/api/j/j",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/instagram/api/j/l;->a(Landroid/support/v4/a/c;Lcom/instagram/api/j/j;)V

    .line 86
    iget-object v0, p0, Lcom/instagram/api/j/h;->a:Lcom/instagram/api/j/c;

    invoke-virtual {v0}, Lcom/instagram/api/j/c;->j()Landroid/support/v4/app/an;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/j/h;->a:Lcom/instagram/api/j/c;

    invoke-virtual {v1}, Lcom/instagram/api/j/c;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/an;->a(I)V

    .line 87
    return-void
.end method

.method public final bridge synthetic a(Landroid/support/v4/a/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p2, Lcom/instagram/api/j/j;

    invoke-virtual {p0, p1, p2}, Lcom/instagram/api/j/h;->a(Landroid/support/v4/a/c;Lcom/instagram/api/j/j;)V

    return-void
.end method
