.class final Lcom/instagram/android/fragment/ec;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ea;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ea;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v0, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ea;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ea;->ae()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ea;->c()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/ea;

    invoke-static {v0}, Lcom/instagram/android/fragment/ea;->a(Lcom/instagram/android/fragment/ea;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/ea;

    iget-object v1, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ea;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/fragment/ea;->b(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/ea;

    invoke-static {v0}, Lcom/instagram/android/fragment/ea;->b(Lcom/instagram/android/fragment/ea;)Lcom/instagram/android/fragment/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/fragment/y;->b()V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/ea;

    invoke-static {v0}, Lcom/instagram/android/fragment/ea;->c(Lcom/instagram/android/fragment/ea;)Landroid/view/View;

    move-result-object v0

    if-eq p2, v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/instagram/android/fragment/ec;->a:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v0, p1, p3}, Lcom/instagram/android/fragment/ea;->a(Landroid/widget/AdapterView;I)V

    goto :goto_0
.end method
