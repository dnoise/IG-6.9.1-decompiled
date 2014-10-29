.class public final Lcom/instagram/ui/dialog/b;
.super Ljava/lang/Object;
.source "IgDialogBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/Dialog;

.field private final c:Landroid/widget/ListView;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/TextView;

.field private final g:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field private final j:Landroid/view/View;

.field private final k:Landroid/widget/TextView;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroid/view/View;

.field private final o:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 45
    sget v0, Lcom/facebook/aw;->alert_dialog:I

    sget v1, Lcom/facebook/ba;->IgDialog:I

    invoke-direct {p0, p1, v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V

    .line 46
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;

    .line 52
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p1, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    .line 53
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p2}, Landroid/app/Dialog;->setContentView(I)V

    .line 55
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;

    .line 56
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->scrollView:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->d:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->alertTitleContainer:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->f:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->message_avatar:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->g:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    .line 60
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->message:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->link:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->i:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->button_group:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->j:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->button_positive:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->k:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->button_negative:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->l:Landroid/widget/TextView;

    .line 65
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->button_divider:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->n:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->button_blue:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->m:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    sget v1, Lcom/facebook/av;->customViewHolder:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/instagram/ui/dialog/b;->o:Landroid/view/ViewGroup;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/instagram/ui/dialog/b;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/TextView;I)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    new-instance v0, Lcom/instagram/ui/dialog/d;

    invoke-direct {v0, p0, p2, p4}, Lcom/instagram/ui/dialog/d;-><init>(Lcom/instagram/ui/dialog/b;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    return-void
.end method

.method static synthetic b(Lcom/instagram/ui/dialog/b;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    return-object v0
.end method

.method private c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->m:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/TextView;I)V

    .line 142
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->m:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/instagram/ui/dialog/b;
    .locals 2
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    return-object p0
.end method

.method public final a(IILjava/lang/String;)Lcom/instagram/ui/dialog/b;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 115
    new-instance v0, Landroid/text/SpannableString;

    iget-object v1, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 117
    iget-object v1, p0, Lcom/instagram/ui/dialog/b;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/instagram/ui/dialog/c;

    invoke-direct {v1, p0, p3, p2}, Lcom/instagram/ui/dialog/c;-><init>(Lcom/instagram/ui/dialog/b;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 130
    return-object p0
.end method

.method public final a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/instagram/ui/dialog/b;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/instagram/ui/dialog/b;
    .locals 1
    .parameter

    .prologue
    .line 231
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 232
    return-object p0
.end method

.method public final a(Landroid/view/View;)Lcom/instagram/ui/dialog/b;
    .locals 2
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->o:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 248
    return-object p0
.end method

.method public final a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
    .locals 2
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;
    .locals 2
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->g:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    invoke-virtual {v0, p1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setUrl(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->g:Lcom/instagram/common/ui/widget/imageview/CircularImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/common/ui/widget/imageview/CircularImageView;->setVisibility(I)V

    .line 81
    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->k:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/TextView;I)V

    .line 156
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    :cond_0
    return-object p0
.end method

.method public final a(Z)Lcom/instagram/ui/dialog/b;
    .locals 1
    .parameter

    .prologue
    .line 236
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 237
    return-object p0
.end method

.method public final a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 259
    new-instance v0, Lcom/instagram/ui/menu/r;

    iget-object v1, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/menu/r;-><init>(Landroid/content/Context;)V

    .line 261
    iget-object v1, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/instagram/ui/dialog/e;

    invoke-direct {v2, p0, p2}, Lcom/instagram/ui/dialog/e;-><init>(Lcom/instagram/ui/dialog/b;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 271
    invoke-virtual {v0, p1}, Lcom/instagram/ui/menu/r;->a([Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 273
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 274
    return-object p0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 76
    return-void
.end method

.method public final b()Lcom/instagram/ui/dialog/b;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    return-object p0
.end method

.method public final b(I)Lcom/instagram/ui/dialog/b;
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 149
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/ui/dialog/b;
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    return-object p0
.end method

.method public final b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 171
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->l:Landroid/widget/TextView;

    const/4 v1, -0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/widget/TextView;I)V

    .line 173
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->k:Landroid/widget/TextView;

    sget v1, Lcom/facebook/au;->dialog_bottom_right_button:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 177
    return-object p0
.end method

.method public final c()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/16 v4, 0x4c

    invoke-static {v1, v4}, Lcom/instagram/common/y/f;->a(Landroid/util/DisplayMetrics;I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 204
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->h:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->c:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/instagram/ui/menu/r;

    .line 218
    iget-object v1, p0, Lcom/instagram/ui/dialog/b;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/instagram/ui/dialog/b;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/instagram/ui/menu/r;->a(Z)V

    .line 222
    iget-object v1, p0, Lcom/instagram/ui/dialog/b;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/instagram/ui/dialog/b;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/instagram/ui/menu/r;->b(Z)V

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    return-object v0

    :cond_2
    move v1, v3

    .line 218
    goto :goto_0

    :cond_3
    move v2, v3

    .line 222
    goto :goto_1
.end method

.method public final c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/instagram/ui/dialog/b;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/instagram/ui/dialog/b;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/instagram/ui/dialog/b;->b:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 242
    return-object p0
.end method
