.class final Lcom/instagram/android/people/widget/k;
.super Lcom/instagram/ui/widget/base/a;
.source "PeopleTagsLayout.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/people/widget/c;

.field final synthetic b:Lcom/instagram/android/people/widget/PeopleTagsLayout;


# direct methods
.method constructor <init>(Lcom/instagram/android/people/widget/PeopleTagsLayout;Lcom/instagram/android/people/widget/c;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/instagram/android/people/widget/k;->b:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    iput-object p2, p0, Lcom/instagram/android/people/widget/k;->a:Lcom/instagram/android/people/widget/c;

    invoke-direct {p0}, Lcom/instagram/ui/widget/base/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 325
    iget-object v0, p0, Lcom/instagram/android/people/widget/k;->b:Lcom/instagram/android/people/widget/PeopleTagsLayout;

    new-instance v1, Lcom/instagram/android/people/widget/l;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/widget/l;-><init>(Lcom/instagram/android/people/widget/k;)V

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PeopleTagsLayout;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method
