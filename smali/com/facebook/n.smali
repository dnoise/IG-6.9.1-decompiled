.class final Lcom/facebook/n;
.super Ljava/lang/Object;
.source "AuthorizationClient.java"

# interfaces
.implements Lcom/facebook/ai;


# instance fields
.field final synthetic a:Lcom/facebook/k;

.field final synthetic b:Lcom/facebook/m;


# direct methods
.method constructor <init>(Lcom/facebook/m;Lcom/facebook/k;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/facebook/n;->b:Lcom/facebook/m;

    iput-object p2, p0, Lcom/facebook/n;->a:Lcom/facebook/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 544
    iget-object v0, p0, Lcom/facebook/n;->b:Lcom/facebook/m;

    iget-object v1, p0, Lcom/facebook/n;->a:Lcom/facebook/k;

    invoke-virtual {v0, v1, p1}, Lcom/facebook/m;->a(Lcom/facebook/k;Landroid/os/Bundle;)V

    .line 545
    return-void
.end method
