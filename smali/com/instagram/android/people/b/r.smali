.class final Lcom/instagram/android/people/b/r;
.super Ljava/lang/Object;
.source "PhotosOfYouOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/q;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/b/q;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/instagram/android/people/b/r;->a:Lcom/instagram/android/people/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/instagram/android/people/b/r;->a:Lcom/instagram/android/people/b/q;

    invoke-static {v0}, Lcom/instagram/android/people/b/q;->a(Lcom/instagram/android/people/b/q;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/instagram/android/people/b/r;->a:Lcom/instagram/android/people/b/q;

    sget v1, Lcom/instagram/android/c/a/j;->b:I

    invoke-static {v0, v1}, Lcom/instagram/android/people/b/q;->a(Lcom/instagram/android/people/b/q;I)V

    .line 73
    :cond_0
    return-void
.end method
