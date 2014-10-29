.class final Lcom/facebook/widget/j;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/h;


# direct methods
.method constructor <init>(Lcom/facebook/widget/h;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/facebook/widget/j;->a:Lcom/facebook/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/widget/j;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;)V

    .line 194
    iget-object v0, p0, Lcom/facebook/widget/j;->a:Lcom/facebook/widget/h;

    invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V

    .line 195
    return-void
.end method
