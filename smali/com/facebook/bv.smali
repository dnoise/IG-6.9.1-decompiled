.class final Lcom/facebook/bv;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/facebook/cb;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/facebook/bu;


# direct methods
.method constructor <init>(Lcom/facebook/bu;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1532
    iput-object p1, p0, Lcom/facebook/bv;->b:Lcom/facebook/bu;

    iput-object p2, p0, Lcom/facebook/bv;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1540
    iget-object v0, p0, Lcom/facebook/bv;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/facebook/bv;->a:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1536
    return-void
.end method
