.class final Lcom/facebook/widget/e;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/bo;

.field final synthetic b:Lcom/facebook/widget/d;


# direct methods
.method constructor <init>(Lcom/facebook/widget/d;Lcom/facebook/bo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 607
    iput-object p1, p0, Lcom/facebook/widget/e;->b:Lcom/facebook/widget/d;

    iput-object p2, p0, Lcom/facebook/widget/e;->a:Lcom/facebook/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/facebook/widget/e;->a:Lcom/facebook/bo;

    invoke-virtual {v0}, Lcom/facebook/bo;->f()V

    .line 610
    return-void
.end method
