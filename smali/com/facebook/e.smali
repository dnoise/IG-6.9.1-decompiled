.class final Lcom/facebook/e;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Lcom/facebook/u;


# instance fields
.field final synthetic a:Lcom/facebook/c;


# direct methods
.method constructor <init>(Lcom/facebook/c;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/facebook/e;->a:Lcom/facebook/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/e;->a:Lcom/facebook/c;

    iget-object v0, v0, Lcom/facebook/c;->h:Lcom/facebook/k;

    invoke-virtual {v0}, Lcom/facebook/k;->a()Lcom/facebook/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/u;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/facebook/e;->a:Lcom/facebook/c;

    iget-object v0, v0, Lcom/facebook/c;->h:Lcom/facebook/k;

    invoke-virtual {v0}, Lcom/facebook/k;->a()Lcom/facebook/u;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/u;->a(Landroid/content/Intent;I)V

    .line 260
    return-void
.end method
