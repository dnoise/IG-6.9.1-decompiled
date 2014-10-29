.class final Lcom/facebook/b/k;
.super Ljava/lang/Object;
.source "FbDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/b/j;


# direct methods
.method constructor <init>(Lcom/facebook/b/j;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/facebook/b/k;->a:Lcom/facebook/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/facebook/b/k;->a:Lcom/facebook/b/j;

    invoke-static {v0}, Lcom/facebook/b/j;->a(Lcom/facebook/b/j;)Lcom/facebook/b/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/b/e;->a()V

    .line 110
    iget-object v0, p0, Lcom/facebook/b/k;->a:Lcom/facebook/b/j;

    invoke-virtual {v0}, Lcom/facebook/b/j;->dismiss()V

    .line 111
    return-void
.end method
