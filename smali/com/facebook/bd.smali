.class final Lcom/facebook/bd;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/facebook/bg;


# instance fields
.field final synthetic a:Lcom/facebook/bh;


# direct methods
.method constructor <init>(Lcom/facebook/bh;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/facebook/bd;->a:Lcom/facebook/bh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/bn;)V
    .locals 2
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/bd;->a:Lcom/facebook/bh;

    if-eqz v0, :cond_0

    .line 264
    iget-object v1, p0, Lcom/facebook/bd;->a:Lcom/facebook/bh;

    invoke-virtual {p1}, Lcom/facebook/bn;->c()Lcom/facebook/h/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/h/h;

    invoke-interface {v1, v0, p1}, Lcom/facebook/bh;->a(Lcom/facebook/h/h;Lcom/facebook/bn;)V

    .line 266
    :cond_0
    return-void
.end method
