.class final Lcom/instagram/android/people/b/u;
.super Lcom/instagram/api/j/a;
.source "PhotosOfYouOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/q;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/b/q;)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput-object p1, p0, Lcom/instagram/android/people/b/u;->a:Lcom/instagram/android/people/b/q;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/b/q;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/instagram/android/people/b/u;-><init>(Lcom/instagram/android/people/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    sget v0, Lcom/facebook/az;->people_tagging_settings_change_fail:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 152
    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/instagram/android/people/b/u;->a:Lcom/instagram/android/people/b/q;

    invoke-static {v0}, Lcom/instagram/android/people/b/q;->c(Lcom/instagram/android/people/b/q;)V

    .line 147
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 156
    iget-object v0, p0, Lcom/instagram/android/people/b/u;->a:Lcom/instagram/android/people/b/q;

    invoke-static {v0}, Lcom/instagram/android/people/b/q;->a(Lcom/instagram/android/people/b/q;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 157
    iget-object v0, p0, Lcom/instagram/android/people/b/u;->a:Lcom/instagram/android/people/b/q;

    invoke-static {v0}, Lcom/instagram/android/people/b/q;->b(Lcom/instagram/android/people/b/q;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    .line 158
    return-void
.end method
