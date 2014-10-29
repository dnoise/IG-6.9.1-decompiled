.class final Lcom/instagram/common/a/a/i;
.super Landroid/support/v4/a/a;
.source "LoaderRequestPerformer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/a/a",
        "<",
        "Lcom/instagram/common/l/a/e",
        "<TResponseType;>;>;"
    }
.end annotation


# instance fields
.field final synthetic n:Lcom/instagram/common/a/a/h;

.field private o:Lcom/instagram/common/l/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/instagram/common/a/a/h;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/instagram/common/a/a/i;->n:Lcom/instagram/common/a/a/h;

    invoke-direct {p0, p2}, Landroid/support/v4/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/instagram/common/l/a/e;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 62
    iput-object p1, p0, Lcom/instagram/common/a/a/i;->o:Lcom/instagram/common/l/a/e;

    .line 64
    invoke-virtual {p0}, Lcom/instagram/common/a/a/i;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0, p1}, Landroid/support/v4/a/a;->a(Ljava/lang/Object;)V

    .line 67
    :cond_0
    return-void
.end method

.method private u()Lcom/instagram/common/l/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/l/a/e",
            "<TResponseType;>;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/instagram/common/a/a/i;->n:Lcom/instagram/common/a/a/h;

    invoke-static {v0}, Lcom/instagram/common/a/a/h;->a(Lcom/instagram/common/a/a/h;)Lcom/instagram/common/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/a/a/a;->g()Lcom/instagram/common/l/a/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    check-cast p1, Lcom/instagram/common/l/a/e;

    invoke-direct {p0, p1}, Lcom/instagram/common/a/a/i;->a(Lcom/instagram/common/l/a/e;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/instagram/common/a/a/i;->u()Lcom/instagram/common/l/a/e;

    move-result-object v0

    return-object v0
.end method

.method protected final l()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/support/v4/a/a;->l()V

    .line 73
    iget-object v0, p0, Lcom/instagram/common/a/a/i;->o:Lcom/instagram/common/l/a/e;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/instagram/common/a/a/i;->o:Lcom/instagram/common/l/a/e;

    invoke-direct {p0, v0}, Lcom/instagram/common/a/a/i;->a(Lcom/instagram/common/l/a/e;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/common/a/a/i;->m()V

    goto :goto_0
.end method

.method protected final r()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/support/v4/a/a;->r()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/common/a/a/i;->o:Lcom/instagram/common/l/a/e;

    .line 84
    return-void
.end method
