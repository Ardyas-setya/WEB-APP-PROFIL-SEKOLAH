package com.example.afinal;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;

import com.denzcoskun.imageslider.ImageSlider;
import com.denzcoskun.imageslider.constants.ScaleTypes;
import com.denzcoskun.imageslider.models.SlideModel;
import com.example.afinal.ui.prestasi.PrestasiFragment;
import com.example.afinal.ui.prestasi.PrestasiViewModel;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    public ImageView imgProfile;
    public ImageView imgPrestasi;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        ImageSlider imageSlider = findViewById(R.id.slider);

        List<SlideModel> slideModels = new ArrayList<>();

        slideModels.add(new SlideModel("https://picsum.photos/id/237/200/300", "Title", ScaleTypes.FIT));
        slideModels.add(new SlideModel("https://picsum.photos/seed/picsum/200/300", "Title", ScaleTypes.FIT));
        slideModels.add(new SlideModel("https://picsum.photos/200/300?grayscale", "Title", ScaleTypes.FIT));
        slideModels.add(new SlideModel("https://picsum.photos/200/300/?blur", "Title", ScaleTypes.FIT));

        imageSlider.setImageList(slideModels, ScaleTypes.CENTER_CROP);

        imgProfile = (ImageView) findViewById(R.id.imageProfile);
        imgPrestasi = (ImageView) findViewById(R.id.imagePrestasi);

        imgProfile.setOnClickListener(this);
        imgPrestasi.setOnClickListener(this);
    }


    @Override
    public void onClick(View v) {
        Intent i;
        switch (v.getId()){
            case R.id.imageProfile:
                i = new Intent(this,DrawerActivity.class);
                startActivity(i);
                break;

            case R.id.imagePrestasi:
                i = new Intent(this, PrestasiViewModel.class);
                startActivity(i);
                break;
        }

    }
}