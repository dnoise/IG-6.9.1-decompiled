.class public abstract Landroid/support/v4/app/ac;
.super Landroid/support/v4/view/ae;
.source "FragmentPagerAdapter.java"


# instance fields
.field private final a:Landroid/support/v4/app/s;

.field private b:Landroid/support/v4/app/ag;

.field private c:Landroid/support/v4/app/Fragment;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/s;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Landroid/support/v4/view/ae;-><init>()V

    .line 69
    iput-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    .line 70
    iput-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    .line 75
    iput-object p1, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/s;

    .line 76
    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "android:switcher:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(I)J
    .locals 2
    .parameter

    .prologue
    .line 192
    int-to-long v0, p0

    return-wide v0
.end method


# virtual methods
.method public abstract a(I)Landroid/support/v4/app/Fragment;
.end method

.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 90
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    .line 94
    :cond_0
    invoke-static {p2}, Landroid/support/v4/app/ac;->b(I)J

    move-result-wide v3

    .line 97
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, v3, v4}, Landroid/support/v4/app/ac;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/s;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_3

    .line 101
    iget-object v1, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/ag;->c(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    .line 108
    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    .line 109
    :goto_1
    if-eqz v1, :cond_1

    .line 110
    iget-object v3, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    iget-object v3, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    if-eq v0, v3, :cond_2

    .line 113
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->b(Z)V

    .line 114
    if-nez v1, :cond_2

    .line 115
    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->c_(Z)V

    .line 119
    :cond_2
    return-object v0

    .line 103
    :cond_3
    invoke-virtual {p0, p2}, Landroid/support/v4/app/ac;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 105
    iget-object v1, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v6

    invoke-static {v6, v3, v4}, Landroid/support/v4/app/ac;->a(IJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v0, v3}, Landroid/support/v4/app/ag;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    goto :goto_0

    :cond_4
    move v1, v2

    .line 108
    goto :goto_1
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    .line 86
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ag;->b(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/ag;

    .line 130
    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 170
    check-cast p2, Landroid/support/v4/app/Fragment;

    invoke-virtual {p2}, Landroid/support/v4/app/Fragment;->E()Landroid/view/View;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    iget-object v0, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 155
    iget-object v2, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    if-eq v0, v2, :cond_0

    .line 156
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/Fragment;->c_(Z)V

    goto :goto_0

    .line 159
    :cond_1
    iput-object v3, p0, Landroid/support/v4/app/ac;->d:Ljava/util/List;

    .line 161
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    invoke-virtual {v0}, Landroid/support/v4/app/ag;->c()I

    .line 163
    iput-object v3, p0, Landroid/support/v4/app/ac;->b:Landroid/support/v4/app/ag;

    .line 164
    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/s;

    invoke-virtual {v0}, Landroid/support/v4/app/s;->b()Z

    .line 166
    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    check-cast p1, Landroid/support/v4/app/Fragment;

    .line 135
    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    if-eq p1, v0, :cond_2

    .line 136
    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->c_(Z)V

    .line 138
    iget-object v0, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->b(Z)V

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->c_(Z)V

    .line 142
    invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->b(Z)V

    .line 144
    :cond_1
    iput-object p1, p0, Landroid/support/v4/app/ac;->c:Landroid/support/v4/app/Fragment;

    .line 146
    :cond_2
    return-void
.end method
