.class final Lcom/instagram/android/people/b/i;
.super Ljava/lang/Object;
.source "PeopleTagSearchFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/h;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/b/h;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/instagram/android/people/b/i;->a:Lcom/instagram/android/people/b/h;

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
    .line 110
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TAG_ROW_FOOTER_SEARCH"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/instagram/android/people/b/i;->a:Lcom/instagram/android/people/b/h;

    iget-object v1, p0, Lcom/instagram/android/people/b/i;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v1}, Lcom/instagram/android/people/b/h;->a(Lcom/instagram/android/people/b/h;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->getStrippedText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/b/h;->a(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/instagram/android/people/b/i;->a:Lcom/instagram/android/people/b/h;

    invoke-static {v0}, Lcom/instagram/android/people/b/h;->a(Lcom/instagram/android/people/b/h;)Lcom/instagram/ui/widget/searchedittext/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/widget/searchedittext/SearchEditText;->b()V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/instagram/android/people/b/i;->a:Lcom/instagram/android/people/b/h;

    invoke-virtual {v0, p1, p3}, Lcom/instagram/android/people/b/h;->a(Landroid/widget/AdapterView;I)V

    goto :goto_0
.end method
