.class final Lcom/instagram/j/c/r;
.super Ljava/lang/Object;
.source "NewsfeedFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/j/c/p;


# direct methods
.method constructor <init>(Lcom/instagram/j/c/p;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/instagram/j/c/r;->a:Lcom/instagram/j/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/instagram/j/c/r;->a:Lcom/instagram/j/c/p;

    iget-object v0, v0, Lcom/instagram/j/c/p;->a:Lcom/instagram/j/c/g;

    sget-object v1, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/j/c/g;->a(Lcom/instagram/j/c/g;I)V

    .line 410
    iget-object v0, p0, Lcom/instagram/j/c/r;->a:Lcom/instagram/j/c/p;

    sget-object v1, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/j/c/p;->a(I)V

    .line 411
    iget-object v0, p0, Lcom/instagram/j/c/r;->a:Lcom/instagram/j/c/p;

    iget-object v0, v0, Lcom/instagram/j/c/p;->a:Lcom/instagram/j/c/g;

    invoke-static {v0}, Lcom/instagram/j/c/g;->e(Lcom/instagram/j/c/g;)V

    .line 412
    return-void
.end method
