.class final Lcom/facebook/bw;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/facebook/cb;


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lcom/facebook/bu;


# direct methods
.method constructor <init>(Lcom/facebook/bu;Landroid/support/v4/app/Fragment;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1546
    iput-object p1, p0, Lcom/facebook/bw;->b:Lcom/facebook/bu;

    iput-object p2, p0, Lcom/facebook/bw;->a:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/facebook/bw;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/facebook/bw;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Intent;I)V

    .line 1550
    return-void
.end method
